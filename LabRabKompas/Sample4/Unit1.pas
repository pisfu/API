unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, SldWorks_TLB, jpeg, ExtCtrls, TeeFilters, Kompas6Constants_TLB, KompasAPI7_TLB, COMObj;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
    ImageFiltered1: TImageFiltered;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  var
    SW : ISldWorks;
    SelMgr: ISelectionMgr;
    MRG:ISketch;
    MD: IModelDoc;
    Seg: array[0..55] of ISketchSegment;
    Point: array[0..5] of ISketchPoint;
    CP,PP1,PP2: ISketchPoint;
    ML,X0,Y0,L0,L,B,b12,a,dw1,dw2,h,H1:Extended;
    HR:HResult;
begin

   //Координаты первой точки
   X0 :=  65/1000;
   Y0 :=  30/1000;

   b12 := StrToFloat(Edit1.Text)/1000;
   a :=   StrToFloat(Edit2.Text)/1000;
   h :=   StrToFloat(Edit3.Text)/1000;
   dw1 := StrToFloat(Edit4.Text)/1000;
   dw2 := StrToFloat(Edit5.Text)/1000;

   //Расчеты
   B:=2*a+b12;
   Label4.Caption:='Ширина: '+FloatToStr(B*1000);
   L0:= 2*a+dw2+dw1;
   Label1.Caption:='Длина: '+FloatToStr(L0*1000);
   H1:=h+dw2+a;
   Label8.Caption:='Высота: '+FloatToStr(H1*1000);
   ML:= dw1+dw2;
   Label11.Caption:='Межосевое расстояние: '+FloatToStr(H1*1000);
   L:= dw1+dw2;
   Label3.Caption:='L: '+FloatToStr(L*1000);

  //Запуск солида
  HR:=S_OK;

  SW := CoSldWorks_.Create;
  if SW=nil then HR := E_OUTOFMEMORY;
  if not SW.Visible then  SW.Visible := true;

   MD:=SW.NewDrawing(2) as IModelDoc;
  if MD=nil then hr:=E_OUTOFMEMORY;
   SelMgr:=md.ISelectionManager;
  if SelMgr=nil then hr:=E_OUTOFMEMORY;

  md.InsertSketch;

 if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
 cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
 if cp = nil then
    hr:=S_FALSE;
 md.ClearSelection;

 //Построение, первый вид:
 Seg[0]:= md.ICreateLine2(X0, Y0, 0, (X0+B), Y0, 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[1]:= md.ICreateLine2((X0+B), Y0, 0, (X0+B), (Y0+dw2/2+(5*a)/6), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[2]:= md.ICreateLine2((X0+B-a/4), (Y0+dw2/2+(5*a)/6), 0, (X0+B+a/4), (Y0+dw2/2+(5*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[3]:= md.ICreateLine2((X0+B-a/4), (Y0+dw2/2+(7*a)/6), 0, (X0+B+a/4), (Y0+dw2/2+(7*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[4]:= md.ICreateLine2((X0+B), (Y0+dw2/2+(7*a)/6), 0, (X0+B), (Y0+dw2+a+dw1/2-a/6), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[5]:= md.ICreateLine2((X0+B-a/4), (Y0+dw2+dw1/2+(5*a)/6), 0, (X0+B+a/4), (Y0+dw2+dw1/2+(5*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[6]:= md.ICreateLine2((X0+B-a/4), (Y0+dw2+dw1/2+(7*a)/6), 0, (X0+B+a/4), (Y0+dw2+dw1/2+(7*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[7]:= md.ICreateLine2((X0+B), (Y0+dw2+a+dw1/2+a/6), 0, (X0+B), (Y0+dw2+2*a+dw1), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[8]:= md.ICreateLine2((X0+B), (Y0+dw2+2*a+dw1), 0, (X0), (Y0+dw2+2*a+dw1), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.AddHorizontalDimension2((X0+B/2), (Y0+dw2+3*a+dw1), 0);

 Seg[9]:= md.ICreateLine2((X0), (Y0+dw2+2*a+dw1), 0, (X0), (Y0+dw2+dw1/2+(7*a)/6), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[10]:= md.ICreateLine2((X0-a/4), (Y0+dw2+dw1/2+(7*a)/6), 0, (X0+a/4), (Y0+dw2+dw1/2+(7*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[11]:= md.ICreateLine2((X0-a/4), (Y0+dw2+dw1/2+(5*a)/6), 0, (X0+a/4), (Y0+dw2+dw1/2+(5*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[12]:= md.ICreateLine2((X0), (Y0+dw2+dw1/2+(5*a)/6), 0, (X0), (Y0+dw2/2+(7*a)/6), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[13]:= md.ICreateLine2((X0-a/4), (Y0+dw2/2+(7*a)/6), 0, (X0+a/4), (Y0+dw2/2+(7*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[14]:= md.ICreateLine2((X0-a/4), (Y0+dw2/2+(5*a)/6), 0, (X0+a/4), (Y0+dw2/2+(5*a)/6), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[15]:= md.ICreateLine2((X0), (Y0+dw2/2+(5*a)/6), 0, (X0), Y0, 0);
 md.SketchAddConstraints ('sgVERTICAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[16]:= md.ICreateLine2((X0+a), (Y0+a), 0, (X0+a+b12), (Y0+a), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 md.AddHorizontalDimension2((X0+a+b12/2), (Y0-a), 0);

 Seg[17]:= md.ICreateLine2((X0+a+b12), (Y0+a), 0, (X0+a+b12), (Y0+a+dw2+dw1), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[18]:= md.ICreateLine2((X0+a+b12), (Y0+a+dw2+dw1), 0, (X0+a), (Y0+a+dw2+dw1), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[19]:= md.ICreateLine2((X0+a), (Y0+a+dw2+dw1), 0, (X0+a), (Y0+a), 0);
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[20]:= md.ICreateLine2((X0+a), (Y0+a+dw2), 0, (X0+a+b12), (Y0+a+dw2), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[21]:= md.ICreateLine2((X0-a/2), (Y0+dw2/2+a), 0, (X0+B+a/2), (Y0+dw2/2+a), 0);
 Seg[21].ConstructionGeometry:=true;

 Seg[22]:= md.ICreateLine2((X0-a/2), (Y0+dw2+a+dw1/2), 0, (X0+B+a/2), (Y0+dw2+a+dw1/2), 0);
 Seg[22].ConstructionGeometry:=true;

 //Построение, вротой вид
 Seg[23]:= md.ICreateLine2((X0+B+2*a+b12), Y0, 0, (X0+B+2*a+b12+h+dw2/2), Y0, 0);
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[24]:= md.ICreateArc2((X0+B+2*a+b12+h+dw2/2), (Y0+a+dw2/2), 0, (X0+B+2*a+b12+h+dw2/2), Y0, 0, (X0+B+2*a+b12+h+dw2+a), (Y0+a+dw2/2), 0, 1);

 Seg[25]:= md.ICreateLine2((X0+B+2*a+b12), Y0, 0, (X0+B+2*a+b12), (Y0+2*a+dw2+dw1), 0);
 md.SketchAddConstraints ('sgVERTICAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[26]:= md.ICreateLine2((X0+B+2*a+b12), (Y0+2*a+dw2+dw1), 0, (X0+B+2*a+b12+h+dw2/2+dw1/2+a/10), (Y0+2*a+dw2+dw1), 0);
 md.SketchAddConstraints ('sgHORIZONTAL');
 //md.AddHorizontalDimension2((((X0+B+2*a+b12)+(X0+B+2*a+b12+h+dw2/2+dw1/2+a/10))/2), (Y0+dw2+3*a+dw1), 0);

 Seg[27]:= md.ICreateCircleByRadius2((X0+B+2*a+b12+h+dw2/2), (Y0+a+dw2/2), 0, (dw2/2));
 md.AddDiameterDimension2((X0+B+3*a+b12+h+dw2/2), (Y0+dw2/2), 0);

 //Откючаем привязки для того чтобы окружности не накладывалисб друг на друга
 md.SetInferenceMode(false);
 Seg[28]:= md.ICreateCircleByRadius2((X0+B+2*a+b12+h+dw2/2), (Y0+a+dw2+dw1/2), 0, (dw1/2));
 md.AddDiameterDimension2((X0+B+2*a+b12+h+dw2/2+dw1/4), (Y0+a+dw2+dw1/2-dw1/4), 0);
 //Включаем их обратно
 md.SetInferenceMode(True);

 Seg[29]:= md.ICreateLine2((X0+B+2*a+b12+h+dw2+a), (Y0+a+dw2/2), 0, (X0+B+2*a+b12+h+dw2+a), (Y0+a+dw2/2+b12/2), 0);
 md.SketchAddConstraints ('sgVERTICAL');
 md.SketchAddConstraints('sgFIXED');

 Seg[30]:= md.ICreateLine2((X0+B+3*a+b12+h+dw2), (Y0+a+dw2/2+b12/2), 0, (X0+B+2*a+b12+h+dw2/2+dw1/2+a/10), (Y0+2*a+dw2+dw1), 0);
 md.SketchAddConstraints('sgFIXED');

 Seg[31]:= md.ICreateLine2((X0+B+2*a+b12+h+dw2/2), (Y0+a/2), 0, (X0+B+2*a+b12+h+dw2/2), (Y0+2*a+dw2+dw1-a/2), 0);
 Seg[31].ConstructionGeometry:=true;

 Seg[32]:= md.ICreateLine2((X0+B+1.5*a+b12+h), (Y0+a+dw2/2), 0, (X0+B+2.5*a+b12+h+dw2), (Y0+a+dw2/2), 0);
 Seg[32].ConstructionGeometry:=true;

 Seg[33]:= md.ICreateLine2((X0+B+1.5*a+b12+h+dw2/2-dw1/2), (Y0+a+dw2+dw1/2), 0, (X0+B+2.5*a+b12+h+dw2/2+dw1/2), (Y0+a+dw2+dw1/2), 0);
 Seg[33].ConstructionGeometry:=true;

 //Точки для размеров
 Point[0]:=md.ICreatePoint2((X0+B+2*a+b12+h+dw2/2), (Y0+a+dw2+dw1), 0);
 Point[1]:=md.ICreatePoint2((X0+B+2*a+b12+h), (Y0+a+dw2/2), 0);
 Point[2]:=md.ICreatePoint2((X0+B+2*a+b12+h+dw2/2), (Y0+a), 0);
 Point[3]:=md.ICreatePoint2((X0+B+2*a+b12+h+dw2), (Y0+a+dw2/2), 0);

 //Размеры и взаимосвязи
 Seg[15].Select(False);
 Seg[19].Select(True);
 md.AddHorizontalDimension2((X0+a/2), (Y0+2*a), 0);

 Seg[1].Select(False);
 Seg[17].Select(True);
 md.AddHorizontalDimension2((X0+b12+a/2+a), (Y0+2*a), 0);

 Seg[21].Select(False);
 Seg[22].Select(True);
 md.AddHorizontalDimension2((X0-a), (Y0+dw2+3*a+dw1)/2, 0);

 Seg[0].Select(False);
 Seg[8].Select(True);
 md.AddHorizontalDimension2((X0-2*a), (Y0+dw2+3*a+dw1)/2, 0);

 Seg[25].Select(False);
 Point[1].Select(True);
 md.AddHorizontalDimension2((X0+B+2*a+b12+h/2), (Y0+h), 0);

 Seg[23].Select(False);
 Point[2].Select(True);
 md.AddVerticalDimension2((X0+B+2*a+b12+2*h), (Y0+a/2), 0);


 Point[3].Select(True);
 md.AddHorizontalDimension2((X0+B+2*a+b12+h+dw2+a/2), (Y0+a+dw2/2), 0);

 Seg[26].Select(False);
 Point[0].Select(True);
 md.AddVerticalDimension2((X0+B+2*a+b12+dw2/2), (Y0+a+dw2+dw1+a/2), 0);

 Seg[25].Select(False);
 Seg[29].Select(True);
 md.AddHorizontalDimension2((((X0+B+2*a+b12)+(X0+B+2*a+b12+h+dw2+a))/2), (Y0-a), 0);

 Seg[0].Select(False);
 Seg[23].Select(True);
 md.SketchAddConstraints('sgCOLINEAR');

 Seg[8].Select(False);
 Seg[26].Select(True);
 md.SketchAddConstraints('sgCOLINEAR');

 Seg[16].Select(False);
 Seg[27].Select(True);
 md.SketchAddConstraints('sgTANGENT');

 Seg[20].Select(False);
 Seg[27].Select(True);
 md.SketchAddConstraints('sgTANGENT');

 Seg[18].Select(False);
 Seg[28].Select(True);
 md.SketchAddConstraints('sgTANGENT');

 Seg[20].Select(False);
 Seg[28].Select(True);
 md.SketchAddConstraints('sgTANGENT');

 Seg[16].Select(False);
 Point[2].Select(True);
 md.SketchAddConstraints('sgCOINCIDENT');

 Seg[27].Select(False);
 Point[3].Select(True);
 md.SketchAddConstraints('sgCOINCIDENT');

 Seg[27].Select(False);
 Point[1].Select(True);
 md.SketchAddConstraints('sgCOINCIDENT');

 Seg[27].Select(False);
 Seg[28].Select(True);
 md.SketchAddConstraints('sgTANGENT');

 Seg[32].Select(False);
 Point[1].Select(True);
 md.SketchAddConstraints('sgCOINCIDENT');

 Seg[27].Select(False);
 Seg[24].Select(True);
 md.SketchAddConstraints('sgCONCENTRIC');

 Seg[21].Select(False);
 Seg[32].Select(True);
 md.SketchAddConstraints('sgCOLINEAR');

 Seg[22].Select(False);
 Seg[18].Select(True);
 Seg[20].Select(True);
 md.SketchAddConstraints('sgSYMMETRIC');


    end;

procedure TForm1.Button2Click(Sender: TObject);  //Тут запускает с непонятными ошибками... :(
var
   // DrawContainer: ILineSegments;
    KP: IApplication;
    KD: IKompasDocument;
    DC: ILineSegments;
    LS1: ILineSegment;

begin

 // Создаем компас и 2D-документ с помощью API Компаса
 try
   // Ищем запущеный компас, если запущен, перезапускаем
   KP:=IApplication(GetActiveOleObject('Kompas.Application.7'));
 except



 if KP<>nil then KP.Quit;

 try
   // Проверяем закрылся ли Компас, если не запущен, запускаем
   KP:=IApplication(GetActiveOleObject('Kompas.Application.7'));
 except
   on EOleSysError do   // Если не запущен запускаем
     KP:=Co_Application.Create;
 end;

 KP.Visible:=True;

 try
   KD:=KP.Documents.Add(ksDocumentDrawing,True);
   KD:=KP.ActiveDocument;
 except
   ShowMessage('Документ не создан');
   Exit;
 end;

 if KD=nil then
 begin
   ShowMessage('Указатель на документ не получен');
   Exit;
 end;

 try
   DC:=((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as IDrawingContainer).LineSegments;
 except
   ShowMessage('Построение в текущем виде невозможно');
   Exit;
 end;

 if DC=nil then
 begin
   ShowMessage('Указатель на вид не получен');
   Exit;
 end;

   end;
end.
