unit Build;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SldWorks_TLB, StdCtrls, UnitPloskostiKolesa, Math, ComObj, SwConst_TLB;

  function OpenSW: ISldWorks;
  procedure postroenie_kolesa (a, da, db, d, h, un: double); overload;

{  private
    { Private declarations
  public
    { Public declarations }


var
  SW: ISldWorks;
  hr: Hresult;
  MD: IModelDoc2;                         // ƒокумент модели      !!!MD(2)!!!
  SelMgr: ISelectionMgr;                 // ћенеджер выделений
  CP,PP1,PP2: ISketchPoint;              // исходна€ точка
  Seg: array[0..10] of ISketchSegment;   // Ћинии профилей пластины и обмотки
  DemX, DemY, DemZ: ISketchSegment;
  mk : IDispatch;                             //цилиндрическа€ плоскость.. // нова€ построенна€ плоскость, касательна€ цилиндр.поверхности
  Zub: array[0..27] of ISketchSegment;        //линий дл€ профил€ зуба
  virez, Bob: IFeature;




implementation


function OpenSW: ISLDWorks;
begin
{«апуск SW и создание нового документа}
  SW:=CreateOleObject('SldWorks.Application') as ISldWorks;
  if SW= nil  then
      hr:=E_OutOfMemory;
  If not Sw.Visible then
    Sw.Visible:=true;
  MD:=SW.NewPart as IModelDoc2;
end;


procedure postroenie_kolesa (a, da, db, d, h, un: double); overload;
var Razmer: boolean;
begin
{прив€зки}
  if MD = nil then
    hr:=E_OutOfMemory;
  {—оздание эскиза}
  SelMgr:=md.ISelectionManager;
  if SelMgr=nil then hr:=E_OUTOFMEMORY; //¬ошел в режим эскиза

  Razmer:=SW.GetUserPreferenceToggle(SWInputDimValOnCreate);
  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, false);

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

  Seg[2]:= md.ICreateLine2(0, da/1000, 0, (h+h/2)/1000, da/1000, 0) ;
  seg[2].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[3]:= md.ICreateLine2((h+h/2)/1000, da/1000, 0, (h+h/2)/1000, db/1000, 0) ;
  seg[3].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[4]:= md.ICreateLine2((h+h/2)/1000, db/1000, 0, (h+h*3)/1000, db/1000, 0) ;
  seg[4].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[5]:= md.ICreateLine2((h+h*3)/1000, db/1000, 0, (h+h*3)/1000, (db/1.5)/1000, 0) ;
  seg[5].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[6]:= md.ICreateLine2((h+h*3)/1000, (db/1.5)/1000, 0, ((h+h*3)-((db/1.5))/11)/1000, (db/1.5)/1000, 0) ;
  seg[6].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[7]:= md.ICreateLine2(((h+h*3)-((db/1.5)/11))/1000, (db/1.5)/1000, 0, ((h
  +h*3)-((db/1.5))/11)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0) ;
  seg[7].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[8]:= md.ICreateLine2(((h+h*3)-((db/1.5))/11)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0, (h+h/4)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0) ;
  seg[8].Select(false);
  md.SketchAddConstraints ('sgHORIZONTAL');

  Seg[9]:= md.ICreateLine2((h+h/4)/1000, ((db/1.5)+((db/1.5)/16))/1000, 0, (h+h/4)/1000, db/1000, 0) ;
  seg[9].Select(false);
  md.SketchAddConstraints ('sgVERTICAL');

  Seg[10]:= md.ICreateLine2((h+h/4)/1000, db/1000, 0, 0, (db)/1000, 0) ;
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

//  mk:= MD.CreatePlaneAtSurface2(0,false,false,false,i*pi/4);
   {  if not (mk as IFeature).Select(false) then
        hr:=S_FALSE; }
// выбор плоскости построени€ зуба

{  MD.SelectByID('','',0,0.046,-0.002);       // 0.046 - ...      -0.002 - ...
  if not (yzPlane as IFeature).Select(true) then
    hr:=S_FALSE;  }

    {!!!!!!!!!!!строим зуб }
  if not (yzPlane as IFeature).Select(false) then           // верно
    hr:=S_FALSE;
  md.InsertSketch;
    Zub[0]:= MD.ICreateLine2(0,0.0,0,0.020,0,0);
    zub[0].ConstructionGeometry:= true;   //превращение обычной линии в осевую
    zub[1]:= MD.ICreateLine2(0.0,0.0,0.0, 0.0,(-h/2)/1000,0);
    zub[2]:= MD.ICreateLine2(0.0, (-h/2)/1000, 0, h/1000, ((-h/2)/1000 + tan(DegToRad(a))*h/1000), 0);
    zub[3]:= MD.ICreateLine2(h/1000, ((-h/2)/1000 + tan(DegToRad(a))*h/1000), 0, h/1000, 0, 0);         //лева€ сторона зуба
    zub[4]:= MD.ICreateLine2(0, 0, -h/1000, 0.0,(h/2)/1000,0);
    zub[5]:= MD.ICreateLine2(0.0,(h/2)/1000,0, h/1000,(h/2)/1000-Tan(DegToRad(a))*(h/1000),0);
    zub[6]:= MD.ICreateLine2(h/1000,(h/2)/1000-Tan(DegToRad(a))*(h/1000),0, h/1000,0,0);



      //вырез-выт€нуть
    virez:=MD.FeatureManager.FeatureCut(false,false,false,0,0,(da*2)/1000,(da*2)/1000,false,false,false,false,0.0,0.0,false,false,false,false,false,false,false);

  if not (xzPlane as IFeature).Select(false) then              // верно
    hr:=S_FALSE;
  md.InsertSketch;
    Zub[7]:= MD.ICreateLine2(0,0.0,0,0,0.020,0);
    zub[7].ConstructionGeometry:= true;   //превращение обычной линии в осевую
    zub[8]:= MD.ICreateLine2(0, 0, 0, h/2000, 0, 0 );
    zub[9]:= MD.ICreateLine2( h/2000, 0, 0, ((h/2)/1000 - tan(DegToRad(a))*h/1000),h/1000, 0 );
    zub[10]:= MD.ICreateLine2(((h/2)/1000 - tan(DegToRad(a))*h/1000),h/1000, 0 ,  0, h/1000, 0);         //лева€ сторона зуба
    zub[11]:= MD.ICreateLine2( 0, 0, h/1000, -h/2000, 0, ((-h/2)/1000 + tan(DegToRad(a))*h/1000));
    zub[12]:= MD.ICreateLine2(-h/2000, 0, ((-h/2)/1000 + tan(DegToRad(a))*h/1000),(-h/2)/1000+Tan(DegToRad(a))*(h/1000),h/1000,0);
    zub[13]:= MD.ICreateLine2((-h/2)/1000+Tan(DegToRad(a))*(h/1000),h/1000,0,((h/2)/2000 - tan(DegToRad(a))*h/1000),h/1000,0);

      //вырез-выт€нуть
    virez:=MD.FeatureManager.FeatureCut(false,false,false,0,0,(da*2)/1000,(da*2)/1000,false,false,false,false,0.0,0.0,false,false,false,false,false,false,false);


  {
  md.ClearSelection;
  MD.SelectByID('','',-0.07,0.06,-0.033);
  if not (xzPlane as IFeature).Select(true) then
    hr:=S_FALSE;
  mk:=MD.CreatePlaneAtSurface3(0, False, False, True,pi/4,True);
   MD.EditRebuild3;
   (mk as iFeature).Select(false);
   md.InsertSketch;
    Zub[0]:= MD.ICreateLine2(0,0.028,0, 0,-0.050+0.028,0);
    zub[0].ConstructionGeometry:= true;   //превращение обычной линии в осевую
    zub[1]:= MD.ICreateLine2(0,0.0,0, -0.016,0.0,0);
    zub[2]:= MD.ICreateLine2(-0.016,0.0,0, -0.016+tan(DegToRad(12))*0.032,-0.032,0);
    zub[3]:= MD.ICreateLine2(-0.016+tan(DegToRad(12))*0.032,-0.032,0, 0,-0.032,0);
    // отзеркалить
    zub[1].Select(true);
    zub[2].Select(true);
    zub[0].Select(true);
    MD.SketchMirror;
      //вырез-выт€нуть
    virez:=MD.FeatureManager.FeatureCut(false,false,false,0,0,0.065,0.065,false,false,false,false,0.0,0.0,false,false,false,false,false,false,false);
  (mk as IFeature).Select(false);
  md.BlankRefGeom;


  MD.SelectByID('','',-0.07,0.06,-0.033);
  if not (yzPlane as IFeature).Select(true) then
    hr:=S_FALSE;
  mk:=MD.CreatePlaneAtSurface3(0, False, False, True,pi/4,false);
  md.EditRebuild3;
  (mk as IFeature).Select(false);
  md.InsertSketch;
    Zub[0]:= MD.ICreateLine2(0.028,0.0,0,-0.050+0.028,0,0);
    zub[0].ConstructionGeometry:= true;   //превращение обычной линии в осевую
    zub[1]:= MD.ICreateLine2(0.0,0.0,0.0, 0.0,-0.016,0);
    zub[2]:= MD.ICreateLine2(0.0,-0.016,0, 0.032,-0.016+Tan(DegToRad(12))*0.032,0);
    zub[3]:= MD.ICreateLine2(0.032,-0.016+tan(DegToRad(12))*0.032,0, 0.032,0,0);
    // отзеркалить
    zub[1].Select(true);
    zub[2].Select(true);
    zub[0].Select(true);
    MD.SketchMirror;
      //вырез-выт€нуть
    virez:=MD.FeatureManager.FeatureCut(false,false,false,0,0,0.065,0.065,false,false,false,false,0.0,0.0,false,false,false,false,false,false,false);
   (mk as IFeature).Select(false);
    md.BlankRefGeom;
  MD.ShowNamedView2('', 8);
  Md.SaveAs(ExtractFilePath(Application.ExeName)+' олесо'+'.SLDPRT');

    //MD.ShowNamedView2('',0); //(0-перпендикул€рно)

 {

  //mk:= MD.CreatePlaneAtSurface2(0,false,false,false,0);
  FindPlanes(MD);
  if not (xyPlane as IFeature).Select(False) then
    hr:=S_FALSE;
  MD.InsertSketch;

  //if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
   // hr:=S_FALSE;
  md.ShowNamedView2('', 1);
  {zub[0]:= MD.ICreateLine2(-0.016,sqrt(0.046*0.046-0.016*0.016),0, -0.016,0.075,0);
  zub[1]:= MD.ICreateLine2(-0.016,0.075,0, 0.016,0.075,0);
  zub[2]:= MD.ICreateLine2(0.016,0.075,0, 0.016,sqrt(0.046*0.046-0.016*0.016),0);
  zub[3]:= MD.ICreateLine2(0.016,0.043,0, -0.016,sqrt(0.046*0.046-0.016*0.016),0);

 { zub[0].Select(false);
  zub[1].Select(true);
  zub[2].Select(true);
  zub[3].Select(true);
  md.SketchAddConstraints ('sgFIXED');  }


{  MD.CreateCircularSketchStepAndRepeat(((sqrt(0.046*0.046-0.016*0.016))+0.075)/2, 3*pi/2, 8, 2*pi/8, true, '');
  MD.FeatureManager.FeatureCut(true,false,false,0,0,0.032,0.01,true, false, false,false, DegToRad(12),0.0, false,false,false,false,false, true,true);
  //(md as ModelDoc2).FeatureManager.FeatureCircularPattern2(2,0.05, 2,0.02, true, false,'','',false);
  //(md as ModelDoc2).FeatureManager.FeatureCircularPattern2(2, pi, true, '', false);

  // DemX.Select()   ;        }




{  // зуб еще один
  if not (xyPlane as IFeature).Select(false) then           // верно
    hr:=S_FALSE;
  MD.InsertSketch;
  un:= ((-(d)/1000)*sin((a))*sin(((a/2))-(a))+cos((a))*sqrt(sqr((da)/1000))-sqr((d)/1000)*sqr(sin(((a/2)-a))));     //дл€ нахождени€ точки пересечени€ с диаметром вершин
  zub[0]:= MD.ICreateLine2(0,0.0,0,0,0.05,0);
  zub[0].ConstructionGeometry:= true;   //превращение обычной линии в осевую
  zub[1]:=Md.ICreateLine2(-0.005, 0,0,0.005,0,0);
  zub[2]:=Md.ICreateLine2(-0.005,0,0,-(h/2000),un,0);
  Point_zub[0]:=Md.ICreatePoint2(-(h/2000),un,0);  }




  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, razmer);
end;

end.
