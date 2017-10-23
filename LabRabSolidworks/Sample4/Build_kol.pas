unit Build_kol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SldWorks_TLB, StdCtrls, Common_Unit, Math, ComObj, SwConst_TLB;

//  function OpenSW: ISldWorks;
  procedure postroenie_kolesa (a, da, db, d, h: double; z:integer); overload;

{  private
    { Private declarations
  public
    { Public declarations }

implementation

procedure postroenie_kolesa (a, da, db, d, h: double; z:integer); overload;
var Razmer: boolean;
    MD: IModelDoc2;                         // Документ модели      !!!MD(2)!!!
    SelMgr: ISelectionMgr;                 // Менеджер выделений
    CP,PP1,PP2: ISketchPoint;              // исходная точка
    Seg: array[0..10] of ISketchSegment;   // Линии профилей пластины и обмотки
    DemX, DemY, DemZ: ISketchSegment;
    mk : IDispatch;                             //цилиндрическая плоскость.. // новая построенная плоскость, касательная цилиндр.поверхности
    Zub: array[0..27] of ISketchSegment;        //линий для профиля зуба
    os: array[0..1] of ISketchSegment;
    virez, Bob, feat: IFeature;
    SW: ISldWorks;
    hr: Hresult;
    b, un, uk, x_n, y_n, x_k,y_k: double;
    pd: IPartDoc;
    body: IBody2;
    face: IFace2;
    bodies: Variant;

begin

  MD:=OpenSW;
    if MD = nil then
  begin
    hr:=E_OutOfMemory;
    ShowMessage('Error1');
    Exit;
  end;

    SelMgr:=md.ISelectionManager;
  if SelMgr=nil then
    begin
    hr:=E_OutOfMemory;
    ShowMessage('Error2');
    Exit;
  end;

  FindPlanes(MD);

 if not (yzPlane as IFeature).Select(False) then
    hr:=S_FALSE;
    md.InsertSketch;
 if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
 cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
 if cp = nil then
    hr:=S_FALSE;
 //md.ClearSelection;

//  da:=  StrToFloat(Edit1.Text);
  Seg[0]:= md.ICreateLine2(0, 0, 0, 130/1000, 0, 0);
  Seg[0].ConstructionGeometry:=true;

  Seg[1]:= md.ICreateLine2(0, (db)/1000, 0, 0, da/1000, 0) ;
  seg[1].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[2]:= md.ICreateLine2(0, da/1000, 0, (h/2)/1000, da/1000, 0) ;
  seg[2].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[3]:= md.ICreateLine2((h/2)/1000, da/1000, 0, (h/2)/1000, db/1000, 0) ;
  seg[3].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[4]:= md.ICreateLine2((h/2)/1000, db/1000, 0, (h*3)/1000, db/1000, 0) ;
  seg[4].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[5]:= md.ICreateLine2((h*3)/1000, db/1000, 0, (h*3)/1000, (db/1.5)/1000, 0) ;
  seg[5].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[6]:= md.ICreateLine2((h*3)/1000, (db/1.5)/1000, 0, ((h*3)-((db/1.5))/11)/1000, (db/1.5)/1000, 0) ;
  seg[6].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[7]:= md.ICreateLine2(((h*3)-((db/1.5)/11))/1000, (db/1.5)/1000, 0, ((h*3)-((db/1.5))/11)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0) ;
  seg[7].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[8]:= md.ICreateLine2(((h*3)-((db/1.5))/11)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0, (h+h/4)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0) ;
  seg[8].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[9]:= md.ICreateLine2((h/4)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0, (h/4)/1000, db/1000, 0) ;
  seg[9].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[10]:= md.ICreateLine2((h/4)/1000, db/1000, 0, 0, (db)/1000, 0) ;
  seg[10].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

{простановка размеров в эскизе}
  seg[1].Select(false);
  md.AddVerticalDimension(0, 75/1000, 7/1000);

  seg[2].Select(false);
  md.AddHorizontalDimension (0, 75/1000, -0.025);

  seg[4].Select(false);
  md.AddHorizontalDimension (0, 75/1000, -0.045);

  seg[5].Select(false);
  md.AddVerticalDimension (0, 50/1000, -0.130);

  seg[6].Select(false);
  md.AddHorizontalDimension (0, 20/1000, -0.125);

  seg[7].Select(false);
  md.AddVerticalDimension (0, 30/1000, -0.105);

  seg[8].Select(false);
  md.AddHorizontalDimension (0, 20/1000, -0.075);

  seg[0].Select(false);
  seg[10].Select(true);
  md.AddVerticalDimension (0, 35/1000, -0.035);

  seg[0].Select(false);
  seg[8].Select(true);
  md.AddVerticalDimension (0, 35/1000, -0.045);


 //provernyt'
  bob:=MD.FeatureManager.FeatureRevolve(2*pi,false,0,0,0,false,false,false);

  md.ClearSelection;
// зуб еще один
  if not (xyPlane as IFeature).Select(false) then           // верно
    hr:=S_FALSE;
  MD.InsertSketch;
  a:=a*(pi/180);
  b:=pi/(2*z);
  un:= (-d/1000)*sin(a)*sin(b - a)+ (cos(a)*(sqrt(sqr(db/1000)-sqr(d/1000)*sqr(sin(b - a)))));     //для нахождения точки пересечения с диаметром вершин
  uk:= (-d/1000)*sin(a)*sin(b - a)+ (cos(a)*(sqrt(sqr(da/1000)-sqr(d/1000)*sqr(sin(b - a)))));
  x_n:=un*tan(a)+(d/1000)*(sin(b)-cos(b)*tan(a));
  y_n:=un;
  x_k:=uk*tan(a)+(d/1000)*(sin(b)-cos(b)*tan(a));
  y_k:=uk;
  zub[0]:= MD.ICreateLine2(0,0.0,0,0,0.05,0);
  zub[0].ConstructionGeometry:= true;   //превращение обычной линии в осевую
  zub[1]:=Md.ICreateLine2(x_n, y_n,0,x_k,y_k,0);
  zub[2]:=Md.ICreateLine2(-x_n, y_n,0,-x_k,y_k,0);
  zub[3]:=md.ICreateArc2(0,0,0, -x_n, y_n, 0, x_n, y_n, 0, -1);
  zub[4]:=md.ICreateArc2(0,0,0, -x_k, y_k, 0, x_k, y_k, 0, -1);

  md.ShowNamedView2('', 0);

  (zub[2] as ISketchLine).IGetEndPoint2.Select(false);
  (zub[4] as ISketchArc).IGetStartPoint2.Select(true);
  md.SketchAddConstraints('sgMERGEPOINTS');
  md.ClearSelection;

  md.SelectByID('','EDGE',da/1000,0,0);
  (zub[4] as ISketchArc).IGetStartPoint2.Select(true);
  md.SketchAddConstraints('sgCOINCIDENT');
  md.ClearSelection;

  md.SelectByID('','EDGE',da/1000,0,0);
  (zub[4] as ISketchArc).IGetEndPoint2.Select(true);
  md.SketchAddConstraints('sgCOINCIDENT');
  md.ClearSelection;

  md.SelectByID('','EDGE',db/1000,0,0);
  (zub[3] as ISketchArc).IGetStartPoint2.Select(true);
  md.SketchAddConstraints('sgCOINCIDENT');
  md.ClearSelection;

  md.SelectByID('','EDGE',db/1000,0,0);
  (zub[3] as ISketchArc).IGetEndPoint2.Select(true);
  md.SketchAddConstraints('sgCOINCIDENT');
  md.ClearSelection;

  md.SelectByID('','EDGE',da/1000,0,0);
  zub[4].Select(true);
  md.SketchAddConstraints('sgCORADIAL');
  md.ClearSelection;

  virez:=md.FeatureManager.FeatureExtrusion2(true,false,false, 0, 0, h/1000,0, false,false,false,false,0.0,0.0,false,false,
                                            false,false,true,false,true,0,0, true);
  pd:= md as IPartDoc;
  bodies:= pd.getbodies(swSolidBody);
  body:= IDispatch(bodies[0]) as IBody2;
  face:= body.IGetFirstFace;
  while face <> nil do
  begin
    if face.IGetSurface.IsCylinder then
    begin
      break;
    end;
    face:= face.IGetNextFace;
  end;
  (face as IEntity).SelectByMark(false, 1);
  virez.SelectByMark(true, 4);
  feat:=  md.FeatureManager.FeatureCircularPattern2(z, (2*pi)/z, false, 'NULL', false);

  if feat=nil then
  ShowMessage('не построилось');
end;

end.
