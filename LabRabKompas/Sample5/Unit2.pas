unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SldWorks_TLB,StdCtrls, jpeg, ExtCtrls, TeeFilters, Unit3, Unit4;

type
  TForm2 = class(TForm)
    ImageFiltered1: TImageFiltered;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{function AddLine(DrawContainer: ILineSegments; X1,Y1,X2,Y2: Integer): ILineSegment;
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
end;   }

procedure TForm2.Button1Click(Sender: TObject);
var
SW: ISldWorks;
   MD: IDrawingDoc;                         // Документ модели
   MD2: IModelDoc;                       // Документ модели2
   SelMgr: ISelectionMgr;                 // Менеджер выделений
   CP,PP1,PP2: ISketchPoint;              // исходная точка
   FeatMgr: IFeatureManager;              // Менеджер объектов
   CLR: ISketchSegment;                   // Центральная осевая
   Obm, Plt: IComponent;                  // Указатели на обмотку и пластину в сборке
   Dim: IDimension;                       // указатель на последний размер
   Seg: array[0..120] of ISketchSegment;   // Линии профилей пластины и обмотки
   hr:HRESULT;
   x0,y0,B,L0,A,bH,c,dw4,dw1,dw2,b6,dw3,ba,G,h: Extended;
   Poi: array[0..3] of ISketchPoint;
begin
  //x0 := StrToFloat(Edit1.Text)/1000;
 // y0 := StrToFloat(Edit2.Text)/1000;
  B := StrToFloat(Edit3.Text)/1000;
  L0 := StrToFloat(Edit4.Text)/1000;
  a := StrToFloat(Edit5.Text)/1000;
  bH := StrToFloat(Edit6.Text)/1000;
  b6 := StrToFloat(Edit7.Text)/1000;
  ba := StrToFloat(Edit8.Text)/1000;
  c := StrToFloat(Edit9.Text)/1000;
  h := StrToFloat(Edit10.Text)/1000;
  dw1 := StrToFloat(Edit11.Text)/1000;
  dw2 := StrToFloat(Edit12.Text)/1000;
  dw3 := StrToFloat(Edit13.Text)/1000;
  dw4 := StrToFloat(Edit14.Text)/1000;

  Solid(B, L0, a, bH, b6, ba, c, h, dw1, dw2, dw3, dw4);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  x0,y0,B,L0,A,bH,c,dw4,dw1,dw2,b6,dw3,ba,G,h: Extended;
begin
  //x0 := StrToFloat(Edit1.Text);
  //y0 := StrToFloat(Edit2.Text);
  B := StrToFloat(Edit3.Text);
  L0 := StrToFloat(Edit4.Text);
  a := StrToFloat(Edit5.Text);
  bH := StrToFloat(Edit6.Text);
  b6 := StrToFloat(Edit7.Text);
  ba := StrToFloat(Edit8.Text);
  c := StrToFloat(Edit9.Text);
  h := StrToFloat(Edit10.Text);
  dw1 := StrToFloat(Edit11.Text);
  dw2 := StrToFloat(Edit12.Text);
  dw3 := StrToFloat(Edit13.Text);
  dw4 := StrToFloat(Edit14.Text);

  Kompas(B, L0, a, bH, b6, ba, c, h, dw1, dw2, dw3, dw4);

end;


end.
