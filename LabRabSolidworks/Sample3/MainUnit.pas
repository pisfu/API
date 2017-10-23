unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, SldWorks_TLB, CommonModelingUnit, ComObj, ExtCtrls,
  Controls, SketchSolid, TeeFilters, jpeg,Math, ImgList, SwConst_TLB,
  KompasAPI7_TLB, Kompas6Constants_TLB,SketchKompas, Kompas6API5_TLB;


type
  TForm1 = class(TForm)
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    Edit3: TEdit;
    Edit11: TEdit;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit12: TEdit;
    Label1: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Edit13: TEdit;
    Button2: TButton;
    Button1: TButton;
    SD1: TSaveDialog;

    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   Form1: TForm1;
   SW: ISldWorks;                          // Ссылка на приложение
   MD: IModelDoc;                          // Документ модели
   SelMgr: ISelectionMgr;                  // Менеджер выделений
   CP,PP1,PP2: ISketchPoint;               // исходная точка
   CLR: ISketchSegment;                    // Центральная осевая
   Dim: IDimension;                        // указатель на последний размер
   Seg: array[0..100] of ISketchSegment;   // Линии профилей чертежа
   P: array[0..3] of ISketchPoint;         // Точки чертежа
   Path: string;

    KP: iApplication;
    KD: iKompasDocument;
    DC: ILineSegments;
    LS1: ILineSegment;

implementation

{$R *.dfm}

var

   Toggle, InfMode: WordBool;              // настройки пользователя

procedure TForm1.Button2Click(Sender: TObject);
 var
   L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double;
    begin
   try
   s:=StrToFloat(Edit4.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit4.SetFocus;
    exit;
   end;
   try
   bh:=StrToFloat(Edit5.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit5.SetFocus;
    exit;
   end;
   try
   b6:=StrToFloat(Edit6.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit6.SetFocus;
    exit;
   end;
   try
   bt:=StrToFloat(Edit7.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit7.SetFocus;
    exit;
   end;
   try
   a:=StrToFloat(Edit8.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit8.SetFocus;
    exit;
   end;
   try
   c:=StrToFloat(Edit10.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit10.SetFocus;
    exit;
   end;
   try
   dw1:=StrToFloat(Edit9.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit9.SetFocus;
    exit;
   end;
   try
   dw2:=StrToFloat(Edit3.Text)/1000;
  except
    ShowMessage('Некорректный ввод параметра');
    Edit3.SetFocus;
    exit;
   end;

   if (dw3) >= (dw2) then
    begin
      ShowMessage('Диаметр dw2 должен быть больше диаметра dw3');
      Edit5.SetFocus;
      exit;
    end;
   try
   dw3:=StrToFloat(Edit11.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit11.SetFocus;
    exit;
   end;
   try
   dw4:=StrToFloat(Edit12.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit12.SetFocus;
    exit;
   end;

   if (dw1) >= (dw4) then
    begin
      ShowMessage('Диаметр dw4 должен быть больше диаметра dw1');
      Edit12.SetFocus;
      exit;
    end;

   try
   h:=StrToFloat(Edit1.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit1.SetFocus;
    exit;
   end;
   try
   q:=StrToFloat(Edit13.Text)/1000;
   except
    ShowMessage('Некорректный ввод параметра');
    Edit13.SetFocus;
    exit;
   end;

  // Path:=Edit2.Text;

OpenSW(sw,MD, L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q, Toggle, InfMode);

    end;



procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:byte;
begin
  if not (key in ['0'..'9', #8, DecimalSeparator]) then
    key:=#0;
    for i:=1 to length((sender as TEdit).Text) do
    if (key = DecimalSeparator) and ((sender as TEdit).Text[i] = DecimalSeparator) then
      key:=#0;
end;


  procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
var i:string;
begin
  if not (key in ['A'..'Z','a'..'z','А'..'Я','а'..'я','/',':', #8] )
  then
    key:=#0;
end;

// КОМПАС
function AddLine(DrawContainer: ILineSegments; X1,Y1,X2,Y2: extended): ILineSegment;
var LS1: ILineSegment;
begin
 LS1:=DrawContainer.Add;
 LS1.X1:=X1;
 LS1.Y1:=Y1;
 LS1.X2:=X2;
 LS1.Y2:=Y2;
 LS1.Style:=ksCSThin;
 LS1.Update;
 Result:=LS1;
end;
function AddLine2(DrawContainer: ILineSegments; X1,Y1,X2,Y2: extended): ILineSegment;
var LS2: ILineSegment;
begin
 LS2:=DrawContainer.Add;
 LS2.X1:=X1;
 LS2.Y1:=Y1;
 LS2.X2:=X2;
 LS2.Y2:=Y2;
 LS2.Style:=ksCSAxial;
 LS2.Update;
 Result:=LS2;
end;
function AddCircle(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS3: IArc;
begin
 LS3:=DrawContainer.Add;
 LS3.Xc:=Xc;
 LS3.Yc:=Yc;
 LS3.Radius:=R;
 LS3.Angle1:=0;
 LS3.Angle1:=360;
 LS3.Style:=ksCSThin;
 LS3.Update;
 Result:=LS3;
end;

function AddCircleL(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS4: IArc;
begin
 LS4:=DrawContainer.Add;
 LS4.Xc:=Xc;
 LS4.Yc:=Yc;
 LS4.Radius:=R;
 LS4.Angle1:=90;
 LS4.Angle2:=0;
 LS4.Style:=ksCSThin;
 LS4.Update;
 Result:=LS4;
end;

function AddCircleR(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS5: IArc;
begin
 LS5:=DrawContainer.Add;
 LS5.Xc:=Xc;
 LS5.Yc:=Yc;
 LS5.Radius:=R;
 LS5.Angle1:=0;
 LS5.Angle2:=270;
 LS5.Style:=ksCSThin;
 LS5.Update;
 Result:=LS5;
end;

function AddCircleAxial(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS6: IArc;
begin
 LS6:=DrawContainer.Add;
 LS6.Xc:=Xc;
 LS6.Yc:=Yc;
 LS6.Radius:=R;
 LS6.Angle1:=0;
 LS6.Angle1:=360;
 LS6.Style:=ksCSAxial;
 LS6.Update;
 Result:=LS6;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double;
Ls1:LineSegments;
aseg:Arcs;
begin

// размеры задаваемые пользователем
   s:=StrToFloat(Edit4.Text);
   bh:=StrToFloat(Edit5.Text);
   b6:=StrToFloat(Edit6.Text);
   bt:=StrToFloat(Edit7.Text);
   a:=StrToFloat(Edit8.Text);
   c:=StrToFloat(Edit10.Text);
   dw1:=StrToFloat(Edit9.Text);
   dw2:=StrToFloat(Edit3.Text);
   dw3:=StrToFloat(Edit11.Text);
   dw4:=StrToFloat(Edit12.Text);
   h:=StrToFloat(Edit11.Text);
   q:=StrToFloat(Edit13.Text);
  // Path:=Edit2.Text;
 OpenKP(Path,KP, KD, L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q, Toggle, InfMode);

  end;
end.


