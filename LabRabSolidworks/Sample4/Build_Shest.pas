unit Build_Shest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SldWorks_TLB, StdCtrls, Math, ComObj, SwConst_TLB, Common_Unit;

type

Rec_POINT= record
  X: double;
  Y: double;
  Z: double;
end;

MassivSheZi= array of Rec_POINT;  //ARRAY1D


  Procedure Postroenie_Shest(MD: IModelDoc2; a_sh, da_sh, db_sh, d_sh, h_sh, z_sh, d, da, db,z: double); overload;

  {  private
    { Private declarations
  public
    { Public declarations }

implementation

Procedure Postroenie_Shest(MD: IModelDoc2; a_sh, da_sh, db_sh, d_sh, h_sh, z_sh, d, da, db, z: double); overload;
var Point_Gear: array [0..30] of ISketchPoint;
  Point_Gearvyk: array [0..30] of ISketchPoint;
  MyPoints: array[0..90] of MassivSheZi;
  SW: ISldWorks;
  hr: Hresult;
//  MD: IModelDoc2;                         // Документ модели      !!!MD(2)!!!
  SelMgr: ISelectionMgr;                 // Менеджер выделений
  CP,PP1,PP2: ISketchPoint;              // исходная точка
  Seg_sh: array[0..10] of ISketchSegment;   // Линии профилей пластины и обмотки
  osevaya:  ISketchSegment;
  DemX, DemY, DemZ: ISketchSegment;
  mk : IDispatch;                             //цилиндрическая плоскость.. // новая построенная плоскость, касательная цилиндр.поверхности
  Zub: array[0..3] of ISketchSegment;        //линий для профиля зуба
  virez, Bob: IFeature;
  psi, R, P1, P2, s, e1, w1,q1,t1,o1,e2, w2,q2,t2,o2, b_sh, psi_shv, xp,yp,c1, c2, xv,os, x1: double;
  un, uk, psin, psik : extended;
  i, j, l, o :integer;
 // spline: ISketchSegment;
  x_sh:  array {[0..30]} of double;
  y_sh: array {[0..30]} of double;
  x_shv: array of double;
  y_shv: array of double;
  MyMas: array of double;



  begin
  MD:=OpenSW;
  if MD = nil then
  begin
    hr:=E_OutOfMemory;
    ShowMessage('Error');
    Exit;
  end;

    SelMgr:=md.ISelectionManager;
  if SelMgr=nil then
    begin
    hr:=E_OutOfMemory;
    ShowMessage('Error');
    Exit;
  end; //Вошел в режим эскиза



   FindPlanes(MD);

 if not (yzPlane as IFeature).Select(False) then
    hr:=S_FALSE;
    md.InsertSketch;
 if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
 cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
 if cp = nil then
    hr:=S_FALSE;

  Seg_sh[0]:= md.ICreateLine2(0, 0, 0, 130/1000, 0, 0);
  Seg_sh[0].ConstructionGeometry:=true;



  Seg_sh[1]:= md.ICreateLine2(0, (db_sh)/1000, 0, 0, da_sh/1000, 0) ;
  if Seg_sh[1] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error1');
    exit;
  end;

  Seg_sh[2]:= md.ICreateLine2(0, da_sh/1000, 0, (h_sh/2)/1000, da_sh/1000, 0) ;
  if Seg_sh[2] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error2');
    exit;
  end;

  Seg_sh[3]:= md.ICreateLine2((h_sh/2)/1000, da_sh/1000, 0, (h_sh/2)/1000, db_sh/1000, 0) ;
  if Seg_sh[3] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error3');
    exit;
  end;

  Seg_sh[4]:= md.ICreateLine2((h_sh/2)/1000, db_sh/1000, 0, (h_sh*3)/1000, db_sh/1000, 0) ;
  if Seg_sh[4] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error4');
    exit;
  end;

  Seg_sh[5]:= md.ICreateLine2((h_sh*3)/1000, db_sh/1000, 0, (h_sh*3)/1000, (db_sh/1.5)/1000, 0) ;
  if Seg_sh[5] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error5');
    exit;
  end;

  Seg_sh[6]:= md.ICreateLine2((h_sh*3)/1000, (db_sh/1.5)/1000, 0, ((h_sh*3)-((db_sh/1.5))/11)/1000, (db_sh/1.5)/1000, 0) ;
  if Seg_sh[6] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error6');
    exit;
  end;

  Seg_sh[7]:= md.ICreateLine2(((h_sh*3)-((db_sh/1.5)/11))/1000, (db_sh/1.5)/1000, 0, ((h_sh*3)-((db_sh/1.5))/11)/1000, ((db_sh/1.5)+((db_sh/1.5)/16))/1000, 0) ;
  if Seg_sh[7] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error7');
    exit;
  end;

  Seg_sh[8]:= md.ICreateLine2(((h_sh*3)-((db_sh/1.5))/11)/1000, ((db_sh/1.5)+((db_sh/1.5)/16))/1000, 0, (h_sh/4)/1000, ((db_sh/1.5)+((db_sh/1.5)/16))/1000, 0) ;
  if Seg_sh[8] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error8');
    exit;
  end;

  Seg_sh[9]:= md.ICreateLine2((h_sh/4)/1000, ((db_sh/1.5)+((db_sh/1.5)/16))/1000, 0, (h_sh/4)/1000, db_sh/1000, 0) ;
  if Seg_sh[9] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error9');
    exit;
  end;

  Seg_sh[10]:= md.ICreateLine2((h_sh/4)/1000, db_sh/1000, 0, 0, (db_sh)/1000, 0) ;
  if Seg_sh[10] = nil then
  begin
    hr:=S_FALSE;
    ShowMessage('Error10');
    exit;
  end;


  {Простановка взаимосвязей}
  seg_sh[1].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  seg_sh[2].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  seg_sh[3].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  seg_sh[4].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  seg_sh[5].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  seg_sh[6].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  seg_sh[7].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  seg_sh[8].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  seg_sh[9].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  seg_sh[10].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  {простановка размеров в эскизе}
  seg_sh[1].Select(false);
  md.AddVerticalDimension(0, 75/1000, 7/1000);

  seg_sh[2].Select(false);
  md.AddHorizontalDimension (0, 75/1000, -0.025);

  seg_sh[4].Select(false);
  md.AddHorizontalDimension (0, 75/1000, -0.045);

  seg_sh[5].Select(false);
  md.AddVerticalDimension (0, 50/1000, -0.130);

  seg_sh[6].Select(false);
  md.AddHorizontalDimension (0, 20/1000, -0.125);

  seg_sh[7].Select(false);
  md.AddVerticalDimension (0, 30/1000, -0.105);

  seg_sh[8].Select(false);
  md.AddHorizontalDimension (0, 20/1000, -0.075);

  seg_sh[0].Select(false);
  seg_sh[10].Select(true);
  md.AddVerticalDimension (0, 35/1000, -0.035);

  seg_sh[0].Select(false);
  seg_sh[8].Select(true);
  md.AddVerticalDimension (0, 35/1000, -0.045);

 //provernyt'
  bob:=MD.FeatureManager.FeatureRevolve(2*pi,false,0,0,0,false,false,false);

 if not (xyPlane as IFeature).Select(False) then
    hr:=S_FALSE;
    md.InsertSketch;
 if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
 cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
 if cp = nil then
    hr:=S_FALSE;

    MD.ShowNamedView2('',0);


    i:=0;
    b_sh:=pi/(2*z);
    s:=(da-da_sh)/1000;
    R:=(1-(d_sh/d));
    a_sh:=a_sh*(pi/180);
    P1:= d/1000*(sin((b_sh))-cos(b_sh)*Tan(a_sh));

    un:= (-d/1000)*sin(a_sh)*sin(b_sh - a_sh)+ (cos(a_sh)*(sqrt(sqr(db/1000)-sqr(d/1000)*sqr(sin(b_sh - a_sh)))));
    psin:=(d/d_sh)*((a_sh - arccos((R/(s*cos(a_sh)))*(un+(d/1000)*sin(a_sh)*sin(b_sh - a_sh)))));

    c2:=(sqr(da_sh/1000))-(P1*P1*sqr(cos(a_sh)))-((s*s*(sqr(1-R)))/(R*R));
    xv:=(c2)/((2*s*cos(a_sh)*P1));
    psik:=(arcsin(xv)+a_sh)/(1-R);

    psi:=psin;

    SetLength(x_sh,100);
    SetLength(y_sh,100);

  while (psi>=psin) and (psi<=psik) do
   begin

    P2:=tan(a_sh)*sin(psi-R*psi)+cos(psi-R*psi);

    q1:=(cos((a_sh)+R*psi))*P1;
    e1:=(s/R)*(sin(a_sh+R*psi))*P2;
    w1:=cos(a_sh);
    t1:=s*sin(psi);
    x_sh[i]:=(q1+e1)*w1-t1;

    q2:=(-sin(a_sh+R*psi))*P1;
    e2:=(s/R)*(cos(a_sh+R*psi))*P2;
    w2:=cos(a_sh);
    t2:=s*cos(psi);
    y_sh[i]:=(q2+e2)*w2-t2;

    Point_Gear[i]:=md.ICreatePoint2(x_sh[i], y_sh[i], 0);
    md.SetPickMode;
    inc(i);
    psi:=psi+pi/20;
  end;

  SetLength(x_sh,i);
  SetLength(y_sh,i);


  l:=0;
  SetLength(MyMas,length(x_sh)*3);

  for o:=0 to i do
  begin
   MyMas[l]:=x_sh[o];
   inc(l);
   MyMas[l]:=y_sh[o];
   Inc(l);
   MyMas[l]:=0;
   Inc(l);
  end;
 //(spline as IDispatch);
 IDispatch(zub[2]):=md.CreateSpline(MyMas);

 {выкружка}

   xp:=un*tan(a_sh)+P1;
   yp:=un-s;
   c1:=(sqr(db_sh/1000)-sqr(xp)-sqr(yp)-sqr(s))/(2*s);
   x1:= ((-2*c1*(yp+s))+(2*xp*sqrt(sqr(xp)+sqr(yp+s)-sqr(c1))))/(2*(sqr(xp)+sqr(yp+s)));
   psi_shv:= (arccos(x1))/(R-1);
   psi:=psin;

   SetLength(x_shv,100);
   SetLength(y_shv,100);
   j:=0;

   while (psi<=pi/6) and (psi>=psin) do
   begin
    x_shv[j]:= xp*cos(R*psi)+(yp+s)*sin(R*psi)-s*sin(psi);
    y_shv[j]:= -xp*sin(R*psi)+(yp+s)*cos(R*psi)-s*cos(psi);
    Point_Gearvyk[j]:=md.ICreatePoint2(x_shv[j], y_shv[j], 0);
    inc(j);
    psi:=psi+pi/30;
   end;

  SetLength(x_shv,j);
  SetLength(y_shv,j);

  l:=0;
  SetLength(MyMas,length(x_shv)*3);

  for o:=0 to j do
  begin
   MyMas[l]:=x_shv[o];
   inc(l);
   MyMas[l]:=y_shv[o];
   Inc(l);
   MyMas[l]:=0;
   Inc(l);
  end;
 //(spline as IDispatch);
 IDispatch(zub[3]):=md.CreateSpline(MyMas);



  os:=un*tan(a_sh+a_sh)+(d/1000)*(sin(b_sh+a_sh)-cos(b_sh+a_sh)*tan(2*a_sh));
  osevaya:=md.ICreateLine2(0,0,0,os/10,un/10,0);
  osevaya.ConstructionGeometry:=true;

  zub[0]:=md.ICreateArc2(0,0,0, 0, da_sh/1000, 0, da_sh/1000, 0, 0, -1);
  zub[1]:=md.ICreateArc2(0,0,0, 0, db_sh/1000, 0, db_sh/1000, 0, 0, -1);
  md.ClearSelection;

  (zub[2] as ISketchSegment).Select(false);
  (zub[0] as ISketchArc).IGetStartPoint2.Select(true);
  md.SketchAddConstraints('sgCOINCIDENT');
  md.ClearSelection;

  md.SelectAt(1,0,da_sh/1000,0);
  zub[0].Select(true);
  md.SketchAddConstraints('sgCORADIAL');
  md.ClearSelection;

  (zub[3] as ISketchSegment).Select(false);
  (zub[1] as ISketchArc).IGetStartPoint2.Select(true);
  md.SketchAddConstraints('sgCOINCIDENT');
  md.ClearSelection;

  md.SelectAt(1,0,db_sh/1000,0);
  zub[1].Select(true);
  md.SketchAddConstraints('sgCORADIAL');
  md.ClearSelection;

  (zub[3] as ISketchSegment).Select(false);
  (zub[1] as ISketchSegment).Select(true);
  md.SketchAddConstraints('sgTANGENT');
  md.ClearSelection;

   // отзеркалить
    zub[0].Select(false);
    zub[1].Select(true);
  (zub[2] as ISketchSegment).Select(true);
 (zub[3] as ISketchSegment).Select(true);
    osevaya.Select(true);
    MD.SketchMirror;

     end;


end.
