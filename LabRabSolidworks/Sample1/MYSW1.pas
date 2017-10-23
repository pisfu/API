unit MYSW1;



interface

uses SldWorks_TLB, SysUtils,Dialogs,Math,ActiveX,GEARSProcCE,Chart,Series,SW ;

type
TPoint=record
 x,y : extended;
end;


 procedure draw (me,rwe,sigma,x1,xtau,b,alfa,z: extended; nPoint: WORD); //me конусный модуль  // Эта процедура прорисовывает
// эскиз конического колеса. Происходит выбор конической поверхности и построение вспомогательной плоскости

procedure GetThreePlanes(md: IModelDoc2;var Pl1,            // Спереди
                                           Pl2,            // Сверху
                                           Pl3,            // Справа
                                           Point: IFeature);
 // процедура выбирающая плоскости в деревеконструирования.

 Function Calc(me,alfa,b,x1,Rwe:extended; z:integer): boolean;

 // функция делающая вычисления координат точек, по которым строится эскиз колеса.
//me-конусный модуль, sigma - угол делительного конуса, b-ширина венца,z- число зубьев
//l - коэффициент.

//procedure ZubDraw1; // прорисовывается профиль зуба в одной системе координат
//procedure ZubDraw2; // прорисовывается профиль зуба в изменённой системе координат
//procedure ZubDraw3;// прорисовывается профиль зуба в изменённой системе координат
//procedure ZubDraw4;// прорисовывается профиль зуба в изменённой системе координат

implementation

var
  I: ISldWorks;
  I2: IModelDoc2;
  I3: IPartDoc;
  pA,pB,pC,pD,pE,pF,pG,pK,pZ1,pZ2,pZ2_1,pZ3,pZ3_1 :TPoint;
  b1:IBody;
  ef1:IEnumFaces;
  rg1: IFace;
  a: integer;
  surf1 : ISurface;
  feat_t,feat_t1: IFeature;
  v1,v2: Variant;
 dim,dim1: IDisplayDimension;
 MyPlane,MyPlane1: IDispatch;
 Data1: ARRAY1D;

 EndL3,StartL1,L1,L2,L3,L4,P1,P2,P3,P4,P5,P6,Z1,Z2,Z2_1,Z3,Z3_1, point1,
 PointStartP1,PointEndP1,PointEndP3,PointStartP3,PointStartP4,
 PointEndP4,PointStartP5,PointEndP5,PointStartP6,PointEndP6,
 PointStartZ2,PointEndZ2, PointStartZ1,PointEndZ1, PointStartZ3, PointEndZ3, sk:IDispatch;

  j,o: integer;
  zk,mx: extended;
  data: array of double;
procedure GetThreePlanes(md: IModelDoc2;var Pl1,             // Спереди
                                            Pl2,             // Сверху
                                            Pl3,             // Справа
                                            Point: IFeature);
var feat_t: IFeature;
begin
  Pl1:=nil;
  Pl2:=nil;
  Pl3:=nil;
  Point:=nil;
  feat_t:=Md.IFirstFeature;
  while (feat_t<>nil) do
   begin
    if (feat_t as IFeature).GetTypeName='RefPlane' then
      begin
        if Pl1=nil then
         begin
           pl1:=(feat_t as IFeature);
           feat_t:=(feat_t as IFeature).IGetNextFeature;
           continue;
         end;
        if Pl2=nil then
         begin
           pl2:=(feat_t as IFeature);
           feat_t:=(feat_t as IFeature).IGetNextFeature;
           continue;
         end;
        if Pl3=nil then
         begin
           pl3:=(feat_t as IFeature);
           feat_t:=(feat_t as IFeature).IGetNextFeature;
           continue;
         end;
       end;
    if (feat_t as IFeature).GetTypeName='OriginProfileFeature' then
      begin

        Point:=(feat_t as IFeature);
      end;

    feat_t:=(feat_t as IFeature).IGetNextFeature;

   end;
end;


Function Calc(me,alfa,b,x1,Rwe:extended; z:integer): boolean;
 var de,f,s,l: extended;
      const ha=1;
  begin
if (alfa<DegToRad(15)) or (alfa>DegToRad(75)) then
   begin
   ShowMessage('Введите угол от 15 до 75 градусов');
   result:=false;
  exit;
  end
 else

begin
  de:=2*Rwe*sin(alfa);

  l:=(de/(2*sin(alfa))-b)/(de/(2*sin(alfa)));

 // f:=((de/2*sin(alfa)-b)*1.25*me)/(de/2*sin(alfa));

  S:=2.5*me+2;

  pA.x:=de/(2*tan(alfa))-me*(ha+x1)*sin(alfa);
  pA.y:=de/2+me*(ha+x1)*cos(alfa);

  pB.x:=de/(2*tan(alfa));
  pB.y:=de/2;

  pC.x:=de/(2*tan(alfa))+(S+1.25*me)*sin(alfa);
  pC.y:=de/2-(S+1.25*me)*cos(alfa);

  pD.x:=de/(2*tan(alfa))+(S+1.25*me)*sin(alfa);
  pD.y:=0;

  //pM.x:=de/(2*tan(sigma))+(S+1.25*me)*sin(sigma)+(Lst-b)/2;
 // pM.y:=0;

 // pN.x:=de/(2*tan(sigma))+(S+1.25*me)*sin(sigma)+(Lst-b)/2;
 // pN.y:=0;

  pE.x:=de/(2*tan(alfa))+(S+1.25*me)*sin(alfa)-b;
  pE.y:=0;

  pF.x:=(de/(2*tan(alfa)))*(((de/(2*sin(alfa)))-b)/(de/(2*sin(alfa))));
  pF.y:=(de/(2*(((de/2*sin(alfa)))-b))/(de/(2*sin(alfa))));

  pG.x:=(de/(2*tan(alfa))-me*sin(pi/2-alfa))*l  ;
  pG.y:=(de/2+me*cos(pi/2-alfa))*l;

  pK.x:=de/(2*tan(alfa))+(S+1.25*me)*sin(alfa)-b;
  pK.y:=(de/2-1.25*me*sin(alfa))*l;

 { pZ1.x:=-0.001*me*0.35;
  pZ1.y:=0;
  pZ2.x:=-0.001*me*0.35;
  pz2.y:=0.001*me*0.35;
  pZ2_1.x:=2*0.001*me;
  pZ2_1.y:=2*0.001*me*cos((20*pi/180));
  pZ3.x:=2*0.001*me;
  pZ3.y:=2*0.001*me*cos((20*pi/180));
  pZ3_1.x:=2*0.0014*me;
  pZ3_1.y:=0;     }
   {
  pA.x:=de/(2*tan(sigma))-me*sin(pi/2-sigma);
  pA.y:=de/2+me*cos(pi/2-sigma);

  pB.x:=de/(2*tan(sigma));
  pB.y:=de/2;

  pC.x:=de/(2*tan(sigma))+(S+1.25*me)*sin(sigma);
  pC.y:=de/2-(S+1.25*me)*cos(sigma);

  pD.x:=de/(2*tan(sigma))+(S+1.25*me)*sin(sigma);
  pD.y:=0;

  pE.x:=de/(2*tan(sigma))-b*cos(sigma)+f*sin(sigma);
  pE.y:=0;

  pF.x:=(de/(2*tan(sigma)))*(((de/(2*sin(sigma)))-b)/(de/(2*sin(sigma))));
  pF.y:=(de/(2*(((de/2*sin(sigma)))-b))/(de/(2*sin(sigma))));

  pG.x:=(de/(2*tan(sigma))-me*sin(pi/2-sigma))*l  ;
  pG.y:=(de/2+me*cos(pi/2-sigma))*l;

  pK.x:=(de/(2*tan(sigma))+1.25*me*cos(sigma))*l;
  pK.y:=(de/2-1.25*me*sin(sigma))*l; }
  result:=true;

 end;
 end;


procedure draw (me,rwe,sigma,x1,xtau,b,alfa,z: extended; nPoint: WORD);

 var Pl1,pl2,pl3,point: IFeature;
     //m: integer;
     de:extended;

 //     const N: Double = 0.00000000000001;

  begin
   I:=CoSldWorks_.Create;
   I.Visible:=true;
   I.INewPart;
   I2:=I.IActiveDoc2;
   I2.SetInferenceMode(false);
   GetThreePlanes (I2,Pl1,pl2,pl3,point);

begin
  I2.InsertSketch;

   L1:= I2.CreateLine2(0, 0, 0, 0.09, 0, 0);
   if L1=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
    (L1 as IsketchSegment).ConstructionGeometry:=true;
     (L1 as IsketchSegment).Select(True);
      I2.SketchAddConstraints('sgHORIZONTAL');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L1' ,'SKETCHSEGMENT', 0.09, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');

  L3:=I2.CreateLine2(0, 0, 0, pB.x/1000, pB.y/1000, 0);
   if L3=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
  (L3 as IsketchSegment).ConstructionGeometry:=true;
  (L3 as IsketchSegment).Select(False);
  I2.SketchAddConstraints('sgFIXED');
  I2.ClearSelection;

 endL3:=(L3 as ISketchLine).GetEndPoint2;
  (endL3 as ISketchPoint).Select(False);
   (L1 as IsketchSegment).Select(True);
   dim1:= I2.IAddDimension2(0.11,0.07,0);
   dim1.IGetDimension.SetSystemValue2(de/2,0);
     I2.ClearSelection;

p1:=I2.CreateLine2(pE.x/1000,pE.y/1000,0,pD.x/1000,pD.y/1000,0);
 if p1=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
   (p1 as IsketchSegment).Select(False);
     (L1 as IsketchSegment).Select(True);
       I2.SketchAddConstraints('sgCOLINEAR');

p2:=I2.CreateLine2(pD.x/1000,pD.y/1000,0,pC.x/1000,pC.y/1000,0);
 if p2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

p3:=I2.CreateLine2(pC.x/1000,pC.y/1000,0,pA.x/1000,pA.y/1000,0);
 if p3=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
  (p3 as IsketchSegment).Select(False);
  (L3 as IsketchSegment).Select(True);
  I2.SketchAddConstraints('sgPERPENDICULAR');
  I2.ClearSelection;
PointEndP3:=(p3 as ISketchLine).GetEndPoint2;
    (PointEndP3 as ISketchPoint).Select(False);
      (L1 as IsketchSegment).Select(True);
      I2.IAddDimension2(0,0.05,0);
  //    dim2.IGetDimension.SetSystemValue2();
     I2.ClearSelection;
  (endL3 as ISketchPoint).Select(False);
     (p3 as IsketchSegment).Select(true);
       I2.SketchAddConstraints('sgCOINCIDENT');
        I2.ClearSelection;

p4:=I2.CreateLine2(pA.x/1000,pA.y/1000,0,pG.x/1000,pG.y/1000,0);
 if p4=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
   (p4 as IsketchSegment).Select(False);
    I2.AndSelectByID ('', 'SKETCHPOINT', 0, 0, 0);
     I2.SketchAddConstraints('sgCOINCIDENT');
      i2.ClearSelection;
 PointStartP4:=(p4 as ISketchLine).GetStartPoint2;
  (PointStartP4 as ISketchPoint).Select(False);
   (PointEndP3 as ISketchPoint).Select(True);
     I2.SketchAddConstraints('sgMERGEPOINTS');
      i2.ClearSelection;
  (p4 as ISketchSegment).Select(true);
   // (p2 as ISketchSegment).Select(True);
      dim1:= I2.IAddDimension2(0.05,0.05,0);
     Dim1.IGetDimension.SetSystemValue2(b/1000,0);//(0.082,-0.02,0);
      I2.ClearSelection;

{PointEndP4:=(p4 as ISketchLine).GetEndPoint2;
     (PointEndP4 as ISketchPoint).Select(false);
       (L1 as IsketchSegment).Select(TRUE);
         I2.AddDimension(0.005, 0.05, 0);}

p5:=I2.CreateLine2(pG.x/1000,pG.y/1000,0,pK.x/1000,pK.y/1000,0);
 if p5=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
 (p5 as ISketchSegment).Select(False);
     (p3 as ISketchsegment).Select(True);
       I2.SketchAddConstraints('sgPARALLEL');
        I2.ClearSelection;

PointStartP5:=(p5 as ISketchLine).IGetStartPoint2;
PointEndP4:=(p4 as ISketchLine).GetEndPoint2;
   (PointStartP5 as ISketchPoint).Select(false);
   (PointEndP4 as ISketchPoint).Select(True);
    I2.SketchAddConstraints('sgMERGEPOINTS');
      i2.ClearSelection;

p6:=I2.CreateLine2(pK.x/1000,pK.y/1000,0,pE.x/1000,pE.y/1000,0);
  if p6=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
(p6 as ISketchSegment).Select(True);
     I2.SketchAddConstraints('sgVERTICAL');
      I2.ClearSelection;

(p6 as ISketchSegment).Select(False);
    (p2 as ISketchSegment).Select(True);
     I2.AddDimension(0.082,-0.02,0);
      I2.ClearSelection;

PointEndP5:=(P5 as ISketchLine).GetEndPoint2;
  (PointEndP5 as ISketchPoint).Select(False);
  PointStartP6:=(P6 as ISketchLine).GetStartPoint2;
   (PointStartP6 as ISketchPoint).Select(True);
     I2.SketchAddConstraints('sgMERGEPOINTS');
      i2.ClearSelection;

(p6 as ISketchSegment).Select(False);
     StartL1:=(L1 as ISketchLine).GetStartPoint2;
      (StartL1 as ISketchPoint).Select(true);
       I2.AddHorizontalDimension(0.042,-0.02,0);
        I2.ClearSelection;
 end;

point1:=I2.CreatePoint2(0.01,0.01,0);
   (p5 as ISketchSegment).Select(true);
 I2.SketchAddConstraints('sgCOINCIDENT');
 I2.ClearSelection;

 (point1 as ISketchPoint).Select(true);
 ( L3 as IsketchSegment).Select(True);
 I2.SketchAddConstraints('sgCOINCIDENT');
 I2.ClearSelection;
 //  вращение

  (L1 as IsketchSegment).Select(True);
  I2.QueryInterface(IID_IPartDoc, I3);
  I3.FeatureRevolve (2*pi, false, 0, 0 );
  I2.ClearSelection;

//Выбираем коническую поверхность
   b1:=(I2 as IPartDoc).IBodyObject;
   ef1:=b1.EnumFaces;
   ef1.Next(1, rg1, a);
   while (rg1<>nil) and (a > 0) do
   begin
     surf1:= rg1.IGetSurface;
     if surf1.IsCone then
     begin
        v1:=surf1.ConeParams;
   if (v1[7]<alfa+(alfa/100)) or (v1[7]>alfa-(alfa/100))  then
     break;
   end;
     ef1.Next(1,rg1,a);
   end;
   if rg1<>nil then
   begin
      (rg1 as IEntity).Select(True);
   end;

 endL3:=(L3 as ISketchLine).GetEndPoint2;
 (endL3 as ISketchPoint).Select(True);

   // смещаем плоскость к конической поверхности
  MyPlane:=I2.CreatePlaneAtSurface3( 0,False,True,False,alfa,True) ;
  I2.ClearSelection;
  (MyPlane as IFeature).Select(True);
  I2.InsertSketch;
  L2:=I2.CreateLine2(0.01, 0, 0, 0.01, 0.03, 0) ;
 if L2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
(L2 as ISketchSegment).ConstructionGeometry:=True;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgVERTICAL');
 I2.ClearSelection;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgFixed');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L2' ,'SKETCHSEGMENT', 0.01, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');
 I2.ClearSelection;

(L2 as ISketchSegment).Select(True) ;
I2.SketchMirror;



  zk:=z/cos(sigma);
  CreateZubPoints(True, me, sigma, zk, x1, xtau, nPoint, 0.001, Data1);
  SetLength(data, 3*Length(data1));
  j:=0;
  for o:=0 to high(data1) do
  begin
   data[j]:=data1[o].X;
   inc(j);
   data[j]:=data1[o].y-((me*zk)/2000);
   Inc(j);
   data[j]:=data1[o].z;
   Inc(j);
  end;
 I2.CreateSpline(Data);
 I2.EditRebuild3;
 I2.ClearSelection;
 (MyPlane as IFeature).Select(True);
 (point1 as ISketchPoint).Select(true);
 MyPlane1:=I2.CreatePlaneThruPtParallelToPlane(true);
I2.ClearSelection;
(MyPlane1 as Ifeature).select(True) ;
  I2.InsertSketch;
  L2:=I2.CreateLine2(0.01, 0, 0, 0.01, 0.03, 0) ;
 if L2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
 (L2 as ISketchSegment).ConstructionGeometry:=True;
 (L2 as ISketchSegment).Select(True) ;                   0,2     1,8
  I2.SketchAddConstraints('sgVERTICAL');
  I2.ClearSelection;
 (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgFixed');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L2' ,'SKETCHSEGMENT', 0.01, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');
 I2.ClearSelection;

  (L2 as ISketchSegment).Select(True) ;
  I2.SketchMirror;



  mx:=(me*(Rwe-b))/Rwe;
  CreateZubPoints(True, mx, sigma, zk, x1, xtau, nPoint, 0.001, Data1);
  SetLength(data, 3*Length(data1));
  j:=0;
  for o:=0 to high(data1) do
  begin
   data[j]:=data1[o].X;
   inc(j);
   data[j]:=data1[o].y-((mx*zk)/2000);
   Inc(j);
   data[j]:=data1[o].z;
   Inc(j);
  end;
 I2.CreateSpline(Data);
 I2.EditRebuild3;
 I2.ClearSelection;






 {v2:=(MyPlane as IRefPlane).GetRefPlaneParams;
  If (v2[3]<0) and (v2[4]>0) and (abs(v2[5])<B) then
   begin
     ZubDraw1
   end
   else
  If (abs(v2[3])<B) and (abs(v2[4])<B) and (v2[5]<0) then
    begin
    ZubDraw2
    end
   else
  If (v2[3]>0) and (v2[4]<0) and (abs(v2[5])<B) then
    begin
       ZubDraw3
    end
   else
  If (abs(v2[3])<B) and (abs(v2[4])<B) and (v2[5]>0) then
    begin
     ZubDraw4
    end
   else
   ShowMessage('Ошибка');
   exit;   }

end;


// построение профиля зуба

{ procedure ZubDraw1;
 begin
 I2.InsertSketch;
L2:=I2.CreateLine2(-0.01, 0, 0, 0.01, -0.03, 0) ;
 if L2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

(L2 as ISketchSegment).ConstructionGeometry:=True;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgHORIZONTAL');
 I2.ClearSelection;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgFixed');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L2' ,'SKETCHSEGMENT', 0.01, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');
 I2.ClearSelection;

 Z1 :=I2.CreateLine2(-0.001*me*0.35, 0, 0, 0, 0, 0);
  if Z1=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
 (Z1 as IsketchSegment).Select(False);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchAddConstraints('sgPERPENDICULAR');
 PointEndZ1:=(Z1 as ISketchLine).GetStartPoint2;
 (PointEndZ1 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
 I2.ClearSelection;

 (Z1 as IsketchSegment).Select(False);
  dim:= I2.IAddDimension2(0.08,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.35*0.001*me,0);
 I2.ClearSelection;

Z2 := I2.CreateLine2  (-0.001*me*0.35, 0.001*me*0.35, 0, 2*0.001*me, 2*0.001*me*cos(0.349065), 0) ;
 if Z2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

 PointStartZ2:=(Z2 as ISketchLine).GetStartPoint2;
 (PointStartZ2 as ISketchPoint).Select(false);
 PointStartZ1:=(Z1 as ISketchLine).GetEndPoint2;
 (PointStartZ1 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');

 I2.ClearSelection;

 (Z2 as ISketchSegment).Select(FAlse);
 (L2 as ISketchSegment).Select(True) ;
 dim:= I2.IAddDimension2(-0.09,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.349065,0);
 I2.ClearSelection;

 Z3:=I2.CreateLine2(2*0.001*me, 2*0.001*me*cos(0.349065), 0, 2*0.001*me,0,0 );
  if Z3=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

  (Z3 as ISKetchSegment).Select(false);
    (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgPERPENDICULAR') ;
  I2.ClearSelection;
  PointEndZ3:=(Z3 as ISketchLine).GetEndPoint2;
  (PointEndZ3 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
  I2.ClearSelection;

  PointStartZ3:=(Z3 as ISketchLine).GetStartPoint2;
  (PointStartZ3 as ISketchPoint).Select(False);
  PointEndZ2:= (Z2 as ISketchLine).GetEndPoint2;
  (PointEndZ2 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');
 I2.ClearSelection;

  (Z1 as IsketchSegment).Select(False);
  (Z2 as IsketchSegment).Select(True);
  (Z3 as IsketchSegment).Select(True);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchMirror;
 I2.ClearSelection;


 I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z1 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(1.25*me*0.001,0);
 I2.ClearSelection;

  I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z3 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(2*me*0.001,0);
 I2.ClearSelection;

 // Выдавливаем зуб
 I2.FeatureCut(True, WordBool(0), WordBool(0), 2, 0, 0.045, 0, true, false, False,false, DegToRad(l), 0, WordBool(0), WordBool(0)) ;
 I2.ClearSelection;

 // делаем круговой массив
 b1:=(I2 as IPartDoc).IBodyObject;
  ef1:=b1.EnumFaces;
   ef1.Next(1, rg1, a);
   while (rg1<>nil) and (a > 0) do
   begin
     surf1:= rg1.IGetSurface;
     if surf1.IsCone then
     begin
        v1:=surf1.ConeParams;
   if (v1[7]<sigma+(sigma/100)) or (v1[7]>sigma-(sigma/100))  then
     break;
   end;
     ef1.Next(1,rg1,a);
   end;
   if rg1<>nil then
   begin
      (rg1 as IEntity).Select(True);
   end;
 I2.InsertAxis2( true);
feat_t:= I2.IFirstFeature;
 while (feat_t<>nil) do
 begin
 if (feat_t as IFeature).GetTypeName='RefAxis' then
   feat_t.Select2(True,4);
   feat_t:=feat_t.IGetNextFeature
end;

feat_t1:= I2.IFirstFeature;
 while (feat_t1<>nil) do
 begin
 if (feat_t1 as IFeature).GetTypeName='Cut' then
   feat_t1.Select2(True,4);
   feat_t1:=feat_t1.IGetNextFeature;
end;

I2.FeatureCirPattern(round(Z),2*pi/z,true,'nil');
end;

 procedure ZubDraw3;

 begin

 I2.InsertSketch;

L2:=I2.CreateLine2(-0.01, 0, 0, 0.01, -0.03, 0) ;
 if L2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
(L2 as ISketchSegment).ConstructionGeometry:=True;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgHORIZONTAL');
 I2.ClearSelection;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgFixed');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L2' ,'SKETCHSEGMENT', 0.01, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');
 I2.ClearSelection;

 Z1 :=I2.CreateLine2(0.001*me*0.35, 0, 0, 0, 0, 0);
  if Z1=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
  (Z1 as IsketchSegment).Select(False);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchAddConstraints('sgPERPENDICULAR');
 PointEndZ1:=(Z1 as ISketchLine).GetStartPoint2;
 (PointEndZ1 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
 I2.ClearSelection;
 (Z1 as IsketchSegment).Select(False);
  dim:= I2.IAddDimension2(0.08,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.35*0.001*me,0);
 I2.ClearSelection;

 Z2 := I2.CreatePoint2(-pZ2.x,-pZ2.y,0);
 Z2_1:=I2.CreatePoint2(-pZ2_1.x,-pZ2_1.y,0);
  Z2 := I2.CreateLine2  (0.001*me*0.35, -0.001*me*0.35, 0, -2*0.001*me, -2*0.001*me*cos(0.349065), 0) ;
  if Z2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

 PointStartZ2:=(Z2 as ISketchLine).GetStartPoint2;
 (PointStartZ2 as ISketchPoint).Select(false);
 PointStartZ1:=(Z1 as ISketchLine).GetEndPoint2;
 (PointStartZ1 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');
 I2.ClearSelection;
 (Z2 as ISketchSegment).Select(FAlse);
 (L2 as ISketchSegment).Select(True) ;
 dim:= I2.IAddDimension2(-0.09,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.349065,0);
 I2.ClearSelection;

 Z3:=I2.CreateLine2(-2*0.001*me, -2*0.001*me*cos(0.349065), 0, -2*0.001*me,0,0 );
 if Z3=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
(Z3 as ISKetchSegment).Select(false);
    (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgPERPENDICULAR') ;
  I2.ClearSelection;
  PointEndZ3:=(Z3 as ISketchLine).GetEndPoint2;
  (PointEndZ3 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
  I2.ClearSelection;

  PointStartZ3:=(Z3 as ISketchLine).GetStartPoint2;
  (PointStartZ3 as ISketchPoint).Select(False);
  PointEndZ2:= (Z2 as ISketchLine).GetEndPoint2;
  (PointEndZ2 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');
 I2.ClearSelection;

  (Z1 as IsketchSegment).Select(False);
  (Z2 as IsketchSegment).Select(True);
  (Z3 as IsketchSegment).Select(True);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchMirror;
 I2.ClearSelection;

 I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z1 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(1.25*me*0.001,0);
 I2.ClearSelection;

  I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z3 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(2*me*0.001,0);
 I2.ClearSelection;
    // Выдавливаем зуб

 I2.FeatureCut(True, WordBool(0), WordBool(0), 2, 0, 0.045, 0, true, false, False,false, DegToRad(l), 0, WordBool(0), WordBool(0)) ;
 I2.ClearSelection;

// делаем круговой массив

 b1:=(I2 as IPartDoc).IBodyObject;
   ef1:=b1.EnumFaces;
   ef1.Next(1, rg1, a);
   while (rg1<>nil) and (a > 0) do
   begin
     surf1:= rg1.IGetSurface;
     if surf1.IsCone then
     begin
  if (v1[7]<sigma+(sigma/100)) or (v1[7]>sigma-(sigma/100))  then
     break;
   end;
     ef1.Next(1,rg1,a);
   end;
   if rg1<>nil then
   begin
      (rg1 as IEntity).Select(True);
   end;

 I2.InsertAxis2( true);
feat_t:= I2.IFirstFeature;
 while (feat_t<>nil) do
 begin
 if (feat_t as IFeature).GetTypeName='RefAxis' then
   feat_t.Select2(True,4);
   feat_t:=feat_t.IGetNextFeature
end;

feat_t1:= I2.IFirstFeature;
 while (feat_t1<>nil) do
 begin
 if (feat_t1 as IFeature).GetTypeName='Cut' then
   feat_t1.Select2(True,4);
   feat_t1:=feat_t1.IGetNextFeature;
end;
I2.FeatureCirPattern(round(Z),2*pi/z,true,'nil');
end;


 procedure ZubDraw4;
 begin
 I2.InsertSketch;

L2:=I2.CreateLine2(0, -0.01, 0, -0.03, 0.01, 0) ;
if L2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
(L2 as ISketchSegment).ConstructionGeometry:=True;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgHORIZONTAL');
 I2.ClearSelection;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgFixed');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L2' ,'SKETCHSEGMENT', 0.01, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');
 I2.ClearSelection;

 //Z1:=I2.CreatePoint2(0,-0.001*me*0.35,0);
 Z1 :=I2.CreateLine2( 0,-0.001*me*0.35, 0, 0, 0, 0);
 if Z1=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

 (Z1 as IsketchSegment).Select(False);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchAddConstraints('sgPERPENDICULAR');
 PointEndZ1:=(Z1 as ISketchLine).GetStartPoint2;
 (PointEndZ1 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
 I2.ClearSelection;

 (Z1 as IsketchSegment).Select(False);
  dim:= I2.IAddDimension2(0.08,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.35*0.001*me,0);
 I2.ClearSelection;

 Z2 := I2.CreateLine2  (0.001*me*0.35, -0.001*me*0.35, 0,2*0.001*me*cos(0.349065), -2*0.001*me, 0) ;
 if Z2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

 PointStartZ2:=(Z2 as ISketchLine).GetStartPoint2;
 (PointStartZ2 as ISketchPoint).Select(false);
 PointStartZ1:=(Z1 as ISketchLine).GetEndPoint2;
 (PointStartZ1 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');

 I2.ClearSelection;

 (Z2 as ISketchSegment).Select(FAlse);
 (L2 as ISketchSegment).Select(True) ;
 dim:= I2.IAddDimension2(-0.09,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.349065,0);
 I2.ClearSelection;

  Z3:=I2.CreateLine2(-2*0.001*me*cos(0.349065),2*0.001*me, 0, 0,2*0.001*me,0 );
 if Z3=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

(Z3 as ISKetchSegment).Select(false);
    (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgPERPENDICULAR') ;
  I2.ClearSelection;
  PointEndZ3:=(Z3 as ISketchLine).GetEndPoint2;
  (PointEndZ3 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
  I2.ClearSelection;

  PointStartZ3:=(Z3 as ISketchLine).GetStartPoint2;
  (PointStartZ3 as ISketchPoint).Select(False);
  PointEndZ2:= (Z2 as ISketchLine).GetEndPoint2;
  (PointEndZ2 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');
 I2.ClearSelection;

  (Z1 as IsketchSegment).Select(False);
  (Z2 as IsketchSegment).Select(True);
  (Z3 as IsketchSegment).Select(True);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchMirror;
 I2.ClearSelection;

 I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z1 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(1.25*me*0.001,0);
 I2.ClearSelection;

  I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z3 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(2*me*0.001,0);
 I2.ClearSelection;

  // Выдавливаем зуб

 I2.FeatureCut(True, WordBool(0), WordBool(0), 2, 0, 0.045, 0, true, false, False,false, DegToRad(l), 0, WordBool(0), WordBool(0)) ;
 I2.ClearSelection;

// делаем круговой массив
  b1:=(I2 as IPartDoc).IBodyObject;
   ef1:=b1.EnumFaces;
   ef1.Next(1, rg1, a);
   while (rg1<>nil) and (a > 0) do
   begin
     surf1:= rg1.IGetSurface;
     if surf1.IsCone then
     begin
        v1:=surf1.ConeParams;

   if (v1[7]<sigma+(sigma/100)) or (v1[7]>sigma-(sigma/100))  then
     break;
   end;
     ef1.Next(1,rg1,a);
   end;
   if rg1<>nil then
   begin
      (rg1 as IEntity).Select(True);
   end;

 I2.InsertAxis2( true);
feat_t:= I2.IFirstFeature;
 while (feat_t<>nil) do
 begin
 if (feat_t as IFeature).GetTypeName='RefAxis' then
   feat_t.Select2(True,4);
   feat_t:=feat_t.IGetNextFeature
end;

feat_t1:= I2.IFirstFeature;
 while (feat_t1<>nil) do
 begin
 if (feat_t1 as IFeature).GetTypeName='Cut' then
   feat_t1.Select2(True,4);
   feat_t1:=feat_t1.IGetNextFeature;
end;
I2.FeatureCirPattern(round(Z),2*pi/z,true,'nil');
end;

procedure ZubDraw2;

begin
 I2.InsertSketch;

L2:=I2.CreateLine2(0, 0.01, 0, 0.03, 0.01, 0) ;
if L2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

(L2 as ISketchSegment).ConstructionGeometry:=True;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgVERTICAL');
 I2.ClearSelection;
 (L2 as ISketchSegment).Select(True) ;
I2.SketchAddConstraints('sgFixed');

  I2.AndSelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  I2.AndSelectByID ('L2' ,'SKETCHSEGMENT', 0.01, 0, 0);
  I2.SketchAddConstraints ('sgCOINCIDENT');
 I2.ClearSelection;

 Z1 :=I2.CreateLine2(-0.001*me*0.35, -0.001*me*0.35, 0, 0, -0.001*me*0.35, 0);
 if Z1=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;
 (Z1 as IsketchSegment).Select(False);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchAddConstraints('sgPERPENDICULAR');
 PointStartZ1:=(Z1 as ISketchLine).GetEndPoint2;
 (PointStartZ1 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
 I2.SketchAddConstraints('sgCOINCIDENT');
 I2.ClearSelection;

 (Z1 as IsketchSegment).Select(False);
  dim:= I2.IAddDimension2(0.08,-0.01,0);
 dim.IGetDimension.SetSystemValue2(0.35*0.001*me,0);
 I2.ClearSelection;

Z2 := I2.CreateLine2  (-0.001*me*0.35, -0.001*me*0.35, 0, -2*0.001*me*cos(DegToRad(20)), 2*0.001*me, 0) ;
if Z2=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

 PointStartZ2:=(Z2 as ISketchLine).GetStartPoint2;
 (PointStartZ2 as ISketchPoint).Select(false);
 PointStartZ1:=(Z1 as ISketchLine).GetEndPoint2;
 (PointStartZ1 as ISketchPoint).Select(True);
// I2.SketchAddConstraints('sgMERGEPOINTS');

 I2.ClearSelection;
 (Z2 as ISketchSegment).Select(FAlse);
 (L2 as ISketchSegment).Select(True) ;
 dim:= I2.IAddDimension2(-0.09,-0.01,0);
 dim.IGetDimension.SetSystemValue2(degToRad(20),0);
 I2.ClearSelection;

Z3:=I2.CreateLine2(-2*0.001*me*cos(DegToRad(20)) ,2*0.001*me, 0, 0, 2*0.001*me,0 );
 if Z3=nil then
   begin
    ShowMessage('Произошла критическая ошибка');
    exit;
   end;

  (Z3 as ISKetchSegment).Select(false);
    (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgPERPENDICULAR') ;
  I2.ClearSelection;
  PointEndZ3:=(Z3 as ISketchLine).GetEndPoint2;
  (PointEndZ3 as ISketchPoint).Select(False);
  (L2 as ISketchSegment).Select(True) ;
  I2.SketchAddConstraints('sgCOINCIDENT');
  I2.ClearSelection;

  PointStartZ3:=(Z3 as ISketchLine).GetStartPoint2;
  (PointStartZ3 as ISketchPoint).Select(False);
  PointEndZ2:= (Z2 as ISketchLine).GetEndPoint2;
  (PointEndZ2 as ISketchPoint).Select(True);
 I2.SketchAddConstraints('sgMERGEPOINTS');
 I2.ClearSelection;

  (Z1 as IsketchSegment).Select(False);
  (Z2 as IsketchSegment).Select(True);
  (Z3 as IsketchSegment).Select(True);
 (L2 as ISketchSegment).Select(True) ;
 I2.SketchMirror;
 I2.ClearSelection;
 I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z1 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(1.25*me*0.001,0);
 I2.ClearSelection;
  I2.SelectByID('','EXTSKETCHPOINT', 0, 0, 0);
  (Z3 as IsketchSegment).Select(True);
 dim:= I2.IAddDimension2(-0.02,-0.02,0.02)  ;
 dim.IGetDimension.SetSystemValue2(2*me*0.001,0);
 I2.ClearSelection;

   // Выдавливаем зуб
  I2.FeatureCut(True, WordBool(0), WordBool(0), 2, 0, 0.045, 0, true, false, False,false, DegToRad(l), 0, WordBool(0), WordBool(0)) ;
  I2.ClearSelection;

// делаем круговой массив

b1:=(I2 as IPartDoc).IBodyObject;
   ef1:=b1.EnumFaces;
   ef1.Next(1, rg1, a);
   while (rg1<>nil) and (a > 0) do
   begin
     surf1:= rg1.IGetSurface;
     if surf1.IsCone then
     begin
        v1:=surf1.ConeParams;
   if (v1[7]<sigma+(sigma/100)) or (v1[7]>sigma-(sigma/100))  then
     break;
   end;
     ef1.Next(1,rg1,a);
   end;
   if rg1<>nil then
   begin
      (rg1 as IEntity).Select(True);
   end;

  I2.InsertAxis2( true);
  feat_t:= I2.IFirstFeature;
 while (feat_t<>nil) do
  begin
 if (feat_t as IFeature).GetTypeName='RefAxis' then
   feat_t.Select2(True,4);
   feat_t:=feat_t.IGetNextFeature
  end;

feat_t1:= I2.IFirstFeature;
 while (feat_t1<>nil) do
 begin
 if (feat_t1 as IFeature).GetTypeName='Cut' then
   feat_t1.Select2(True,4);
   feat_t1:=feat_t1.IGetNextFeature;
 end;

 I2.FeatureCirPattern(round(Z),2*pi/z,true,'nil');

end;}


end.


