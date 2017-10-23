unit UnitSch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TFormGenerator = class(TForm)
    Raschet: TButton;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    ModelerButton: TButton;
    ModelSelector: TRadioGroup;
    procedure RaschetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ModelerButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGenerator: TFormGenerator;

function FindPlanes: HResult;

implementation

uses SldWorks_TLB, Math, SwConst_TLB;

{$R *.dfm}

type
 TLineCoord = record
              xn,            // координата по Х нижней точки
              yn,            // координата по Y нижней точки
              xv,            // координата по Х верхней точки
              yv: extended;   // координата по Y верхней точки
 end;

var
   hz1, Di, De, z_s1, m, p, Z1, Error1, Error2: Integer;
   dn, tn, bz1, Ls, bn1, b, a, Filt, tbx, alfa, beta, teta, s: Extended;
   i: String;
   xyPlane: IRefPlane;                    // Главная плоскость XY
   xzPlane: IRefPlane;                    // Главная плоскость XZ
   yzPlane: IRefPlane;                    // Главная плоскость YZ
   SW: ISldWorks;                         // Ссылка на приложение
   MD: IModelDoc;                         // Документ модели
   MD2: IModelDoc2;                       // Документ модели2
   AD: IAssemblyDoc;                      // Документ сборки
   SelMgr: ISelectionMgr;                 // Менеджер выделений
   Seg: array[0..15] of ISketchSegment;    // Линии профилей пластины и обмотки
   CP,PP1,PP2: ISketchPoint;              // исходная точка
   FeatMgr: IFeatureManager;              // Менеджер объектов
   CLR: ISketchSegment;                   // Центральная осевая
   Obm, Plt: IComponent;                  // Указатели на обмотку и пластину в сборке
   LI: TLineCoord;                        // координаты внутренней линии
   LO: TLineCoord;                        // координаты внешней линии
   Dim: IDimension;                       // указатель на последний размер

function FindPlanes: HResult;
var
  f: IFeature;
  rp: IRefPlane;
  i: Byte;
  v: Variant;
  hr: HRESULT;
begin
  hr:=S_OK;
  f:= md.IFirstFeature;
  if f=nil then
   hr:=S_FALSE;
  i:= 0;
  while (f <> nil) and (i <= 3) do
  begin
    if f.GetTypeName = 'RefPlane' then
    begin
      rp:= f.GetSpecificFeature as IRefPlane;
      v:= rp.GetRefPlaneParams;
      if (v[0] = 0) and (v[1] = 0) and (v[2] = 0) then
      begin
        Inc(i);
        if (v[6] = 0) and (v[7] = 0) and (v[8] <> 0) then
          xyPlane:= rp
        else if (v[6] <> 0) and (v[7] = 0) and (v[8] = 0) then
          yzPlane:= rp
        else if (v[6] = 0) and (v[7] <> 0) and (v[8] = 0) then
          xzPlane:= rp;
       end;
    end;
    f:= f.IGetNextFeature;
  end;
  if (xyPlane = nil) or (yzPlane = nil) or (xzPlane = nil) then
   hr:=S_FALSE;
  Result:=hr;
end;


procedure TFormGenerator.RaschetClick(Sender: TObject);
begin
   hz1:= StrToInt(FormGenerator.StringGrid1.Cells[2,1]);
   Di:= StrToInt(FormGenerator.StringGrid1.Cells[2,2]);
   De:= StrToInt(FormGenerator.StringGrid1.Cells[2,3]);
   Dn:= StrToFloat(FormGenerator.StringGrid1.Cells[2,4]);
   z_s1:= StrToInt(FormGenerator.StringGrid1.Cells[2,5]);
   p:=  StrToInt(FormGenerator.StringGrid1.Cells[2,6]);
   Z1:= StrToInt(FormGenerator.StringGrid1.Cells[2,7]);

   m:=3;                                                    // Число фаз

   Ls:=(De-Di)/2;
   bn1:=dn*z_s1+0.2;     // 0,2 толщина изоляции ???????
   bz1:=0.8*bn1;

   tn:=(Z1*(bz1+dn*z_s1+0.2))/(6*p);

   alfa:=pi/(p*m);
   beta:=ArcTan(tn/Di);

   teta:=3*alfa-2*beta;

 //  tbx:=Di*sin(beta);
   tbx:=(z_s1*bz1) + (z_s1 + 1)*dn;

   a:=(sqrt(tn*tn+Di*Di))*(sin((3*pi/(p*m)-2*ArcTan(tn/Di))/2));
   b:=De*(sin((3*pi/(p*m)-2*ArcTan(tn/De))/2));

   LI.xn:=a/2000;
   LI.yn:=Di/2000;
   LI.xv:=b/2000;
   LI.yv:=De/2000;
//   LO.xn:=a/2000+tbx/1000;
   LO.xn:=(a/2+sqrt((sqr(tbx)-sqr((z_s1 + 1)*dn))))/1000;

   LO.xv:=b/2000+tbx/1000;
//   LO.yn:=Di/2000-z_s1*dn/1000;
   LO.yn:=(Di/2-dn*(z_s1+1))/1000;

   LO.yv:=De/2000+(z_s1+1)*dn/1000;

   Edit1.Text:= FloatToStr(Ls);
   Edit2.Text:= FloatToStr(bz1);
   ModelerButton.SetFocus;
end;

procedure TFormGenerator.FormCreate(Sender: TObject);
var
   i, j: Integer;
begin
   {Данные для генератора 10кВт}
   FormGenerator.StringGrid1.Cells[0,0]:='Параметр';
   FormGenerator.StringGrid1.Cells[1,0]:='Название параметра';
   FormGenerator.StringGrid1.Cells[2,0]:='Значение';

   {Высота зубца статора}
   FormGenerator.StringGrid1.Cells[0,1]:='hz1';
   FormGenerator.StringGrid1.Cells[1,1]:='Высота зубца статора';
   FormGenerator.StringGrid1.Cells[2,1]:='65';{'45';}

   {Внутренний активный диаметр}
   FormGenerator.StringGrid1.Cells[0,2]:='Di';
   FormGenerator.StringGrid1.Cells[1,2]:='Внутренний активный диаметр';
   FormGenerator.StringGrid1.Cells[2,2]:='450';{360';}

   {Наружный активный диаметр}
   FormGenerator.StringGrid1.Cells[0,3]:='De';
   FormGenerator.StringGrid1.Cells[1,3]:='Наружный активный диаметр';
   FormGenerator.StringGrid1.Cells[2,3]:='546';{'416';}

   {Диаметр обмоточного провода в изоляции}
   FormGenerator.StringGrid1.Cells[0,4]:='Dn';
   FormGenerator.StringGrid1.Cells[1,4]:='Диаметр обмоточного провода в изоляции';
   FormGenerator.StringGrid1.Cells[2,4]:='2,46';{'1,405'}

   {Число слоев в пазу}
   FormGenerator.StringGrid1.Cells[0,5]:='z_s1';
   FormGenerator.StringGrid1.Cells[1,5]:='Число слоев в пазу';
   FormGenerator.StringGrid1.Cells[2,5]:='2';

   {размер B}
   FormGenerator.StringGrid1.Cells[0,6]:='P';
   FormGenerator.StringGrid1.Cells[1,6]:='Число пар полюсов';
   FormGenerator.StringGrid1.Cells[2,6]:='15';

   {Размер А}
   FormGenerator.StringGrid1.Cells[0,7]:='Z1';
   FormGenerator.StringGrid1.Cells[1,7]:='Число зубцов статора';
   FormGenerator.StringGrid1.Cells[2,7]:='270';

end;

procedure TFormGenerator.ModelerButtonClick(Sender: TObject);
var
    hr:HRESULT;

begin
 hr:=S_OK;

 if Edit1.Text='' then
  begin
   ShowMessage('Сначала расчёт');
   Edit1.SetFocus;
   Exit;
  end;
 if Edit2.Text='' then
  begin
   ShowMessage('Сначала расчёт');
   Edit2.SetFocus;
   Exit;
  end;

 // Запустить SolidWorks 2006
  SW:=CoSldWorks_.Create;
 if SW=nil then hr:=E_OUTOFMEMORY;
 if not SW.Visible then
  SW.Visible:=True;
 if ModelSelector.ItemIndex<>2 then
  begin
   MD:=SW.NewPart as IModelDoc;
   if MD=nil then hr:=E_OUTOFMEMORY;
   SelMgr:=md.ISelectionManager;
   if SelMgr=nil then hr:=E_OUTOFMEMORY;

   FindPlanes;

   if not (yzPlane as IFeature).Select(False) then
    hr:=S_FALSE;
   md.InsertSketch;
   if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
   cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
   if cp = nil then
    hr:=S_FALSE;
   md.ClearSelection;
  end;
 case ModelSelector.ItemIndex of
 0: begin

   // Построение пластины
   Seg[0]:= md.ICreateLine2(0, 0, 0, Ls/1000, 0, 0) ;
   md.SketchAddConstraints ('sgHORIZONTAL');
   Seg[1]:= md.ICreateLine2 (Ls/1000, 0, 0, Ls/1000, hz1/1000, 0) ;
   md.SketchAddConstraints ('sgVERTICAL');
   Seg[2]:= md.ICreateLine2 ( Ls/1000, hz1/1000, 0, 0, hz1/1000, 0) ;
   md.SketchAddConstraints ('sgHORIZONTAL');
   Seg[3]:= md.ICreateLine2 (0, hz1/1000, 0, 0, 0, 0 ) ;
   md.SketchAddConstraints ('sgVERTICAL');

   // Выдавливание пластины
      MD.FeatureBoss(true, false, false, 0, 0, bz1/1000, 0, FALSE , FALSE , FALSE ,FALSE , 0,0, FALSE ,FALSE);
  end;
 1:begin

   // Постороение внутренней части обмотки
   Seg[0]:= md.ICreateLine2(LI.xn, LI.yn, 0, LI.xv, LI.yv, 0) ;

   Seg[1]:=MD.ICreateArc2(0, LI.yn+1/1000, 0, LI.xn, LI.yn, 0, -LI.xn, LI.yn, 0, -1);

   Seg[2]:= md.ICreateLine2(-LI.xn, LI.yn, 0, -LI.xv, LI.yv, 0) ;

   Seg[3]:=MD.ICreateArc2(0, LI.yv-1/1000, 0, LI.xv, LI.yv, 0, -LI.xv, LI.yv, 0, 1);

   MD.CreateCenterLineVB(0,0,0,0,LO.yv+10/1000,0);
   CLR:=SelMgr.IGetSelectedObject(1) as ISketchSegment;

   // Взаимосвязь симметрия относительно центральной оси
   Seg[0].Select(false);
   Seg[2].Select(true);
   CLR.Select(true);
   MD.SketchAddConstraints('sgSYMMETRIC');

   // Взаимосвязь окружность дуги равна диаметру
   PP1:=(Seg[3] as ISketchArc).IGetCenterPoint2;
   PP1.Select(false);
   CP.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   
   //Проставление угла тетта
{   Seg[0].Select(False);
   Seg[2].Select(True);
   Dim:=MD.IAddDimension2(0,0.08,0).iGetDimension;
   Dim.SetSystemValue3(teta, swSetValue_UseCurrentSetting,''); }

   // Взаимосвязь горизонтальность крайних точек дуг
   //верхней дуги
   PP1:=(Seg[1] as ISketchArc).IGetEndPoint2;  
   PP2:=(Seg[1] as ISketchArc).IGetStartPoint2;
   PP1.Select(false);
   PP2.Select(true);
   MD.SketchAddConstraints('sgHORIZONTALPOINTS2D');
   //задание размера а
   PP1.Select(false);
   PP2.Select(true);
   Dim:=MD.IAddDimension2(0,0.2,0).iGetDimension;
   Dim.SetSystemValue3(a/1000, swSetValue_UseCurrentSetting,'');
   //нижней дуги
   PP1:=(Seg[3] as ISketchArc).IGetEndPoint2;
   PP2:=(Seg[3] as ISketchArc).IGetStartPoint2;
   PP1.Select(false);
   PP2.Select(true);
   MD.SketchAddConstraints('sgHORIZONTALPOINTS2D');
   //Задание размера b
   PP1.Select(false);
   PP2.Select(true);
   Dim:=MD.IAddDimension2(0,0.3,0).iGetDimension;
   Dim.SetSystemValue3(b/1000, swSetValue_UseCurrentSetting,'');

   // Размеры диаметров
   PP1:=(Seg[0] as ISketchLine).IGetEndPoint2;
   PP2:=(Seg[0] as ISketchLine).IGetStartPoint2;
   PP1.Select(false);
   CP.Select(true);
   Dim:=MD.IAddDimension2(0,0.09,0).iGetDimension;
   Dim.SetSystemValue3(De/2000, swSetValue_UseCurrentSetting,'');

   PP2.Select(false);
   CP.Select(true);
   Dim:=MD.IAddDimension2(0,0.09,0).iGetDimension;
   Dim.SetSystemValue3(Di/2000, swSetValue_UseCurrentSetting,'');
//   MD.AddDimension2(0,0.06,0);}

   //Проставление радиуса нижней дуги
   Seg[1].Select(False);
   Dim:=MD.IAddDimension2(0,0.08,0).iGetDimension;
   Dim.SetSystemValue3(Di/2000, swSetValue_UseCurrentSetting,'');

   // Постороение внешней части обмотки

   Seg[4]:= md.ICreateLine2(LO.xn, LO.yn, 0, LO.xv, LO.yv, 0) ;

   Seg[5]:=MD.ICreateArc2(0, LO.yn+1/1000, 0, LO.xn, LO.yn, 0, -LO.xn, LO.yn, 0, -1);

   Seg[6]:= md.ICreateLine2(-LO.xn, LO.yn, 0, -LO.xv, LO.yv, 0) ;

   Seg[7]:=MD.ICreateArc2(0, LO.yv+3/1000, 0, LO.xv, LO.yv, 0, -LO.xv, LO.yv, 0, 1);

   // Взаимосвязь симметрия относительно центральной оси
   Seg[4].Select(false);
   Seg[6].Select(true);
   CLR.Select(true);
   MD.SketchAddConstraints('sgSYMMETRIC');

   // Взаимосвязь параллельность боковых линий
   Seg[4].Select(false);
   Seg[0].Select(true);
   MD.SketchAddConstraints('sgPARALLEL');

   //Толщина пакета
   Seg[0].Select(False);
   Seg[4].Select(True);
   Dim:=MD.IAddDimension2(0,0.08,0).iGetDimension;
   Dim.SetSystemValue3(tbx/1000, swSetValue_UseCurrentSetting,'');

{   //Концентричность дуг
   Seg[1].Select(False);
   Seg[5].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC'); }

   //Нижняя дуга
   PP1:=(Seg[5] as ISketchArc).IGetCenterPoint2;
   PP1.Select(false);
   PP2:=(Seg[1] as ISketchArc).IGetCenterPoint2;
   PP2.Select(True);
   Dim:=MD.IAddDimension2(-0.08,0.08,0).iGetDimension;
   Dim.SetSystemValue3((dn*(z_s1+1))/1000, swSetValue_UseCurrentSetting,'');

   //совпадение центра внеш дуги и центральной точки
   PP1:=(Seg[7] as ISketchArc).IGetCenterPoint2;
   PP1.Select(false);
   CLR.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   // Взаимосвязь горизонтальность крайних точек дуг
   PP1:=(Seg[5] as ISketchArc).IGetEndPoint2;
   PP2:=(Seg[5] as ISketchArc).IGetStartPoint2;
   PP1.Select(false);
   PP2.Select(true);
   MD.SketchAddConstraints('sgHORIZONTALPOINTS2D');

   PP1:=(Seg[7] as ISketchArc).IGetEndPoint2;
   PP2:=(Seg[7] as ISketchArc).IGetStartPoint2;
   PP1.Select(false);
   PP2.Select(true);
   MD.SketchAddConstraints('sgHORIZONTALPOINTS2D');

   // Размеры диаметров
   PP1:=(Seg[4] as ISketchLine).IGetEndPoint2;
   PP2:=(Seg[4] as ISketchLine).IGetStartPoint2;
   PP2.Select(false);
   CP.Select(true);
   Dim:=MD.IAddDimension2(0.2,0.08,0).iGetDimension;
   Dim.SetSystemValue3(LO.yn, swSetValue_UseCurrentSetting,'');

   //Высота пластины
   Seg[4].Select(False);
   Dim:=MD.IAddDimension2(0,0.08,0).iGetDimension;
   Dim.SetSystemValue3((LO.yv+(De/2-Di/2)+18)/1000, swSetValue_UseCurrentSetting,'');

   //Диаметр верхней дуги
   PP1:=(Seg[7] as ISketchArc).IGetCenterPoint2;
   PP1.Select(false);
   PP2:=(Seg[3] as ISketchArc).IGetCenterPoint2;
   PP2.Select(True);
   Dim:=MD.IAddDimension2(-0.08,0.08,0).iGetDimension;
   Dim.SetSystemValue3((dn*(z_s1+1))/1000, swSetValue_UseCurrentSetting,'');

   // Размеры диаметров
{   PP1:=(Seg[4] as ISketchLine).IGetEndPoint2;
   PP2:=(Seg[4] as ISketchLine).IGetStartPoint2;
   PP1.Select(false);
   CP.Select(true);
   MD.AddDimension2(0,0.085,0);
   PP2.Select(false);
   CP.Select(true);
   MD.AddDimension2(0,0.065,0);


   // Взаимосвязь равенство дуг
   Seg[5].Select(false);
   Seg[7].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');

   // Взаимосвязь окружность дуги равна диаметру
   PP1:=(Seg[7] as ISketchArc).IGetCenterPoint2;
   PP1.Select(false);
   CP.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');   }

   // Скругления
{   Filt:=8;      // Величина скругления

   Seg[0].Select(False);
   Seg[1].Select(True);
   MD.SketchFillet(Filt/1000);
   Seg[0].Select(False);
   Seg[3].Select(True);
   MD.SketchFillet(Filt/1000);
   Seg[1].Select(False);
   Seg[2].Select(True);
   MD.SketchFillet(Filt/1000);
   Seg[3].Select(False);
   Seg[2].Select(True);
   MD.SketchFillet(Filt/1000);

   Seg[4].Select(False);
   Seg[5].Select(True);
   MD.SketchFillet(Filt/1000);
   Seg[4].Select(False);
   Seg[7].Select(True);
   MD.SketchFillet(Filt/1000);
   Seg[5].Select(False);
   Seg[6].Select(True);
   MD.SketchFillet(Filt/1000);
   Seg[7].Select(False);
   Seg[6].Select(True);
   MD.SketchFillet(Filt/1000);}

   // Выдавливание обмотки
   MD.FeatureBoss(true, false, false, 0, 0, (Ls/2-4)/1000, 0, FALSE , FALSE , FALSE ,FALSE , 0,0, FALSE ,FALSE);

  //выдавливание пластин на обмотке
  if not (yzPlane as IFeature).Select(False) then
    hr:=S_FALSE;
   md.InsertSketch;
   if not MD.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
   cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
   if cp = nil then
    hr:=S_FALSE;
   md.ClearSelection;

   s:=dn/1000;
{   Seg[8] := md.ICreateLine2( a/2000+s, di/2000, 0,  b/2000+s,        de/2000,      0) ;
   Seg[9] := md.ICreateLine2( a/2000+s, di/2000, 0,  a/2000+a/2000-s, 0.99*di/2000, 0) ; }
   Seg[10]:= md.ICreateLine2(-LI.xn-s, LI.yn, 0, -LI.xv-s, LI.yv, 0) ;
   Seg[11]:= md.ICreateLine2(-LI.xn-s, LI.yn, 0, -LO.xn+s, LI.yn-0.001, 0) ;

{   Seg[12]:= md.ICreateLine2( b/2000+a/2000-s, 0.99*de/2000, 0,  a/2000+a/2000-s, 0.99*di/2000, 0) ;
   Seg[13]:= md.ICreateLine2( b/2000+a/2000-s, 0.99*de/2000, 0,  b/2000+s,        de/2000,      0) ; }
   Seg[14]:= md.ICreateLine2(-LO.xn+s, LI.yn-0.001, 0, -LO.xv+s, LI.yv-0.001,0) ;
   Seg[15]:= md.ICreateLine2(-LO.xv+s, LI.yv-0.001,0, -LI.xv-s, LI.yv, 0) ;

   Seg[10].Select(False);
   Seg[2].Select(True);
   MD.SketchAddConstraints('sgPARALLEL');
   Dim:=MD.IAddDimension2(-0.08,0.08,0).iGetDimension;
   Dim.SetSystemValue3(dn/1000, swSetValue_UseCurrentSetting,'');

   (Seg[10] as ISketchLine).IGetStartPoint2.Select(True);
   (Seg[10] as ISketchLine).IGetEndPoint2.Select(True);
   Dim:=MD.IAddDimension2(-0.06,0.06,0).iGetDimension;
   Dim.SetSystemValue3((de-di)/2000, swSetValue_UseCurrentSetting,'');

   //перпендикулярность
   Seg[2].Select(False);
   Seg[11].Select(True);
   MD.SketchAddConstraints('sgPERPENDICULAR');
   Seg[2].Select(False);
   Seg[15].Select(True);
   MD.SketchAddConstraints('sgPERPENDICULAR');

   Seg[14].Select(False);
   Seg[10].Select(True);
   MD.SketchAddConstraints('sgPARALLEL');
   Dim:=MD.IAddDimension2(-0.06,0.06,0).iGetDimension;
   Dim.SetSystemValue3((z_s1*bz1+(z_s1-1)*dn)/1000, swSetValue_UseCurrentSetting,'');

   //перпендикулярность  пластин
   Seg[10].Select(False);
   Seg[15].Select(True);
   MD.SketchAddConstraints('sgPERPENDICULAR');

   Seg[11].Select(False);
   CP.Select(True);
   Dim:=MD.IAddDimension2(-0.06,0.06,0).iGetDimension;
   Dim.SetSystemValue3((Di)/2000, swSetValue_UseCurrentSetting,'');

   MD.FeatureBoss(false, false, false, 0, 0, (Ls+4)/1000, 1/1000, FALSE , FALSE , FALSE ,FALSE , 0,0, FALSE ,FALSE);
   (xyPlane as IFeature).Select(True);

   (MD as IPartDoc).MirrorFeature;
  end;
 2:
  begin
   // Построение сборки
   // Файл  обмотки должен быть там же, где программа с именем PartObm.sldprt
   // Файл пластины должен быть там же, где программа с именем PartPlt.sldprt

   AD:=SW.NewAssembly as IAssemblyDoc;

   if AD=nil then hr:=E_OUTOFMEMORY;

   MD2:=SW.OpenDoc6('D:\PartObm.SLDPRT',swDocPART,swOpenDocOptions_Silent,'',Error1,Error2);
//   ShowMessage(MD2.GetTitle);
   Obm:=AD.IAddComponent2('D:\PartObm.SLDPRT',100,100,0);
//  xyPlane:=AD.FeatureByName('Спереди') as IRefPlane;
   Obm.Select(False);

   xyPlane:=(AD.IFeatureByName('Спереди') as IRefPlane);

  end;
 end;


end;

end.
