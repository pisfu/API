unit Unit3;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SldWorks_TLB, StdCtrls, jpeg, ExtCtrls, TeeFilters, CommonModelingUnit;

procedure Solid(B, L0, a, bH, b6, ba, c, h, dw1, dw2, dw3, dw4: extended);

implementation

procedure Solid(B, L0, a, bH, b6, ba, c, h, dw1, dw2, dw3, dw4: extended);
 var SW: ISldWorks;
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
   G,x0,y0: Extended;
   Poi: array[0..3] of ISketchPoint;
begin
  {x0:=0.02;
  y0:=X0;
  B:=0.2;
  L0:= 0.45;
  A:=0.03;
  bH:=0.02;
  b6:=0.021;
  c:=0.019;
  dw4:=0.41;
  dw1:=0.1446;
  dw2:=0.1428;
  dw3:=0.124;
  ba:=0.022; }
  G:=0.1;
  x0:=0.05;
  y0:=0.05;
  hr:=S_OK;
  // Запустить SolidWorks 2006
 SW:=CoSldWorks_.Create;
 if SW=nil then hr:=E_OUTOFMEMORY;
 if not SW.Visible then
   SW.Visible:=True;
 MD2:=SW.INewDrawing(4) as IModelDoc;
 if MD2=nil then hr:=E_OUTOFMEMORY;
   SelMgr:=md2.ISelectionManager;
 if SelMgr=nil then hr:=E_OUTOFMEMORY;

 md2.SetInferenceMode(False);

 FindPlanes(MD2);

 //if not (yzPlane as IFeature).Select(False) then
 //   hr:=S_FALSE;
// md2.InsertSketch;
 //if not md2.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
 cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
 if cp = nil then
    hr:=S_FALSE;
 md2.ClearSelection;

 Seg[0]:= md2.ICreateLine2(x0,y0,0,x0,y0+L0/2-0.025 , 0) ;   //L1
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[1]:= md2.ICreateLine2(x0, y0+L0/2+0.025, 0, x0, y0+L0, 0) ; //L2
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[2]:= md2.ICreateLine2(x0, y0+L0, 0, x0+B, y0+L0, 0) ; //B
 md2.SketchAddConstraints ('sgHORIZONTAL');
(MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0+L0+0.01, 0);
 Seg[3]:= md2.ICreateLine2(x0+B, y0+L0, 0, x0+B, y0+L0/2+0.025, 0) ;  //L3
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[4]:= md2.ICreateLine2(x0+B, y0+L0/2-0.025, 0, x0+B, y0, 0) ; //L4
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[5]:= md2.ICreateLine2(x0+B, y0, 0, x0, y0, 0) ;   //B
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[6]:= md2.ICreateLine2(x0-0.01, y0+L0/2-0.025, 0, x0+0.01, y0+L0/2-0.025, 0) ;      //L5
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[7]:= md2.ICreateLine2(x0-0.01, y0+L0/2+0.025, 0, x0+0.01, y0+L0/2+0.025, 0) ;     //L6
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[8]:= md2.ICreateLine2(x0+B-0.01, y0+L0/2-0.025, 0, x0+B+0.01, y0+L0/2-0.025, 0) ;     //L7
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[9]:= md2.ICreateLine2(x0+B-0.01, y0+L0/2+0.025, 0, x0+B+0.01, y0+L0/2+0.025, 0) ;     //L8
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[10]:= md2.ICreateLine2(x0-0.01, y0+L0/2-0.025, 0, x0-0.01, y0+L0/2-0.015, 0) ; //L9
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[11]:= md2.ICreateLine2(x0+0.01, y0+L0/2-0.025, 0, x0+0.01, y0+L0/2-0.015, 0) ;   //L10
 md2.SketchAddConstraints ('sgVERTICAL');

 Seg[12]:= md2.ICreateLine2(x0+0.01, y0+L0/2+0.025, 0, x0+0.01, y0+L0/2+0.015, 0) ;  //L11
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[13]:= md2.ICreateLine2(x0-0.01, y0+L0/2+0.025, 0, x0-0.01, y0+L0/2+0.015, 0) ; //L12
 md2.SketchAddConstraints ('sgVERTICAL');

 Seg[14]:= md2.ICreateLine2(x0+B-0.01, y0+L0/2-0.025, 0, x0+B-0.01, y0+L0/2-0.015, 0) ;     //L13
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[15]:= md2.ICreateLine2(x0+B+0.01, y0+L0/2-0.025, 0, x0+B+0.01, y0+L0/2-0.015, 0) ;    //L14
 md2.SketchAddConstraints ('sgVERTICAL');

 Seg[16]:= md2.ICreateLine2(x0+B-0.01, y0+L0/2+0.025, 0, x0+B-0.01, y0+L0/2+0.015, 0) ;  //L15
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[17]:= md2.ICreateLine2(x0+B+0.01, y0+L0/2+0.025, 0, x0+B+0.01, y0+L0/2+0.015, 0) ;  //L16
 md2.SketchAddConstraints ('sgVERTICAL');

 Seg[18]:= md2.ICreateLine2(x0-0.015, y0+L0/2-0.015, 0, x0-0.005, y0+L0/2-0.015, 0) ;   //L17
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[19]:= md2.ICreateLine2(x0+0.005, y0+L0/2-0.015, 0, x0+0.015, y0+L0/2-0.015, 0) ;   //L18
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[20]:= md2.ICreateLine2(x0-0.015, y0+L0/2+0.015, 0, x0-0.005, y0+L0/2+0.015, 0) ;      //L19
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[21]:= md2.ICreateLine2(x0+0.005, y0+L0/2+0.015, 0, x0+0.015, y0+L0/2+0.015, 0) ;        //L20
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[22]:= md2.ICreateLine2(x0+B-0.015, y0+L0/2+0.015, 0, x0+B-0.005,  y0+L0/2+0.015, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[23]:= md2.ICreateLine2(x0+B+0.005, y0+L0/2+0.015, 0, x0+B+0.015, y0+L0/2+0.015, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[24]:= md2.ICreateLine2(x0+B-0.015, y0+L0/2-0.015, 0,x0+B-0.005, y0+L0/2-0.015, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[25]:= md2.ICreateLine2(x0+B+0.005, y0+L0/2-0.015, 0,x0+B+0.015, y0+L0/2-0.015, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');



 Seg[26]:= md2.ICreateLine2(x0+A, y0+L0/2-dw4/2, 0, x0+A, y0+L0/2-dw4/2+dw4, 0) ;   //A
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[27]:= md2.ICreateLine2(x0+A, y0+L0/2-dw4/2+dw4, 0, x0+A+bH, y0+L0/2-dw4/2+dw4, 0) ;   //bH
 md2.SketchAddConstraints ('sgHORIZONTAL');
 (MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0-0.005, 0);
 Seg[28]:= md2.ICreateLine2(x0+A+bH, y0+L0/2-dw4/2+dw4, 0, x0+A+bH, y0+L0/2-dw4/2, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[29]:= md2.ICreateLine2(x0+A+bH, y0+L0/2-dw4/2, 0, x0+A, y0+L0/2-dw4/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');


 Seg[30]:= md2.ICreateLine2(x0+A+bH, y0+L0/2+dw1/2+dw2/2, 0, x0+A+bH+c, y0+L0/2+dw1/2+dw2/2, 0) ;
 (MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0+L0+0.005, 0);
 Seg[31]:= md2.ICreateLine2(x0+A+bH, y0+L0/2-dw1/2-dw2/2, 0,  x0+A+bH+c, y0+L0/2-dw1/2-dw2/2, 0) ;  //c
 md2.SketchAddConstraints ('sgHORIZONTAL');


 Seg[32]:= md2.ICreateLine2(x0+A+bH+c, y0+A, 0, x0+A+bH+c, y0+(L0-A), 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[33]:= md2.ICreateLine2(x0+A+bH+c, y0+(L0-A), 0,  x0+A+bH+c+b6, y0+(L0-A), 0) ;  //b6
 md2.SketchAddConstraints ('sgHORIZONTAL');
 (MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0-0.005, 0);
 Seg[33]:= md2.ICreateLine2(x0+A+bH+c+b6, y0+(L0-A), 0, x0+A+bH+c+b6, y0+A, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[34]:= md2.ICreateLine2(x0+A+bH+c+b6, y0+A, 0,  x0+A+bH+c, y0+A, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[35]:= md2.ICreateLine2(x0+A+bH+c+b6, y0+L0/2+dw1/2+dw2/2, 0,x0+A+bH+2*c+b6, y0+L0/2+dw1/2+dw2/2, 0) ;
(MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0+L0+0.005, 0);
 Seg[36]:= md2.ICreateLine2(x0+A+bH+c+b6, y0+L0/2-dw1/2-dw2/2, 0,  x0+A+bH+2*c+b6, y0+L0/2-dw1/2-dw2/2, 0) ;  //c
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[37]:= md2.ICreateLine2(x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2, 0, x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2+dw3, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[38]:= md2.ICreateLine2(x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2+dw3, 0,  x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2+dw3, 0) ;  //ba
 md2.SketchAddConstraints ('sgHORIZONTAL');
 (MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0-0.005, 0);
 Seg[39]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2+dw3, 0, x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[40]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2, 0,  x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[41]:= md2.ICreateLine2(x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2+dw3, 0, x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2+dw3), 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[41].Set_Style(5);
 Seg[42]:= md2.ICreateLine2(x0+A+bH+2*c+b6,y0+L0-(A+(dw2-dw3)/2+dw3), 0, x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2), 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[43]:= md2.ICreateLine2(x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2), 0, x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2), 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[44]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2), 0, x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2+dw3), 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[45]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2+dw3), 0, x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2+dw3), 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[46]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2+dw3), 0, x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2+dw3, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[46].Set_Style(5);

 Seg[47]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+L0/2-dw1/2-dw2/2, 0, x0+A+bH+3*c+b6+ba, y0+L0/2-dw1/2-dw2/2, 0) ;
 (MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0-0.005, 0);                                                 //c
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[48]:= md2.ICreateLine2(x0+A+bH+2*c+b6+ba, y0+L0/2+dw1/2+dw2/2, 0, x0+A+bH+3*c+b6+ba, y0+L0/2+dw1/2+dw2/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[49]:= md2.ICreateLine2(x0+A+bH+3*c+b6+ba, y0+((L0-dw4)/2), 0, x0+A+bH+3*c+b6+ba,(y0+((L0-dw4)/2))+dw4, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[50]:= md2.ICreateLine2(x0+A+bH+3*c+b6+ba, (y0+((L0-dw4)/2))+dw4, 0, x0+A+2*bH+3*c+b6+ba,(y0+((L0-dw4)/2))+dw4, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[51]:= md2.ICreateLine2(x0+A+bH+3*c+b6+ba, y0+((L0-dw4)/2), 0, x0+A+2*bH+3*c+b6+ba,y0+((L0-dw4)/2), 0) ;     //bH
 (MD2 as IModelDoc2).AddHorizontalDimension(x0+B/2, y0+L0+0.005, 0);
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[52]:= md2.ICreateLine2(x0+A+2*bH+3*c+b6+ba, y0+((L0-dw4)/2), 0, x0+A+2*bH+3*c+b6+ba,(y0+((L0-dw4)/2))+dw4, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');

 Seg[53]:= md2.ICreateLine2(x0+A+bH+3*c+b6+ba,  y0+L0/2-dw1/2-dw2/2, 0, x0+2*A+2*bH+3*c+b6+ba, y0+L0/2-dw1/2-dw2/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[54]:= md2.ICreateLine2(x0+A+bH+3*c+b6+ba,  y0+L0/2+dw1/2+dw2/2, 0, x0+2*A+2*bH+3*c+b6+ba, y0+L0/2+dw1/2+dw2/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[55]:= md2.ICreateLine2(x0-0.02,  (y0+((L0-dw4)/2))+dw4/2, 0, x0+A+bH+c,  (y0+((L0-dw4)/2))+dw4/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[56]:= md2.ICreateLine2(x0+A+bH+c+b6,  (y0+((L0-dw4)/2))+dw4/2, 0, x0+A+bH+3*c+b6+ba,  (y0+((L0-dw4)/2))+dw4/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[57]:= md2.ICreateLine2(x0+A+2*bH+3*c+b6+ba,  (y0+((L0-dw4)/2))+dw4/2, 0, x0+B+0.02,  (y0+((L0-dw4)/2))+dw4/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[58]:= md2.ICreateLine2(x0+A,  y0+L0/2+0.025, 0, x0+A+bH,  y0+L0/2+0.025, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[59]:= md2.ICreateLine2(x0+A,  y0+L0/2-0.025, 0, x0+A+bH,  y0+L0/2-0.025, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[60]:= md2.ICreateLine2(x0+A+bH+c,  y0+L0/2-dw1/2, 0, x0+A+bH+c+b6,  y0+L0/2-dw1/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[61]:= md2.ICreateLine2(x0+A+bH+c,  y0+L0/2+dw1/2, 0, x0+A+bH+c+b6,  y0+L0/2+dw1/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');

 Seg[62]:= md2.ICreateLine2(x0+B+G+L0/2,  y0, 0, x0+B+G+L0/2,  y0+L0+0.03, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
 Seg[63]:= md2.ICreateLine2(x0+B+G+L0/2,  y0, 0, x0+B+G+L0/2,  y0-0.03, 0) ;
 md2.SketchAddConstraints ('sgVERTICAL');
// Seg[64]:= md2.ICreateLine2(x0+B+G,  y0+L0/2, 0, x0+B+G+L0,  y0+L0/2, 0) ;
 Seg[65]:= md2.ICreateLine2(x0+B+G-0.03,  y0+L0/2, 0, x0+B+G+L0+0.03,  y0+L0/2, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[65].Set_Style(3);
 Seg[63].Set_Style(3);
 Seg[62].Set_Style(3);

 Seg[66]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+L0/2, 0, L0/2);
 (md2 as IModelDoc2).AddDiameterDimension2(x0+B+G, y0+L0/2-0.03, 0);
 Seg[67]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+L0/2, 0, dw4/2);
 (md2 as IModelDoc2).AddDiameterDimension2(x0+B+G, y0+L0/2-0.1, 0);
 Seg[68]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+L0/2, 0, L0/2-(A+(dw2-dw3)/2));
 Seg[68].Set_Style(3);
 Seg[69]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+L0/2, 0, dw1/2+dw2/2);
 Seg[69].Set_Style(3);
 Seg[70]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+L0/2, 0, dw1/2);
 Seg[70].Set_Style(3);
(md2 as IModelDoc2).AddDiameterDimension2(x0+B+G+L0/2+0.03, y0+L0/2+0.06, 0);

 Seg[71]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+(L0/2-(dw1/2+dw2/2)), 0, dw2/2);
 Seg[72]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+(L0/2-(dw1/2+dw2/2)), 0, dw3/2);
 (md2 as IModelDoc2).AddDiameterDimension2(x0+B+G+L0/2-0.03, y0+0.1, 0);

 Seg[73]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+(L0/2+(dw1/2+dw2/2)), 0, dw2/2);
 Seg[74]:= md2.ICreateCircleByRadius2(x0+B+G+L0/2, y0+(L0/2+(dw1/2+dw2/2)), 0, dw3/2);

 Seg[75]:= md2.ICreateCircleByRadius2(x0+B+G+(L0/2-(dw1/2+dw2/2)), y0+L0/2, 0, dw2/2);
 (md2 as IModelDoc2).AddDiameterDimension2(x0+B+G+0.03, y0+L0/2+0.02, 0);
 Seg[76]:= md2.ICreateCircleByRadius2(x0+B+G+(L0/2-(dw1/2+dw2/2)), y0+L0/2, 0, dw3/2);

 Seg[77]:= md2.ICreateCircleByRadius2(x0+B+G+(L0/2+(dw1/2+dw2/2)), y0+L0/2, 0, dw2/2);
 Seg[78]:= md2.ICreateCircleByRadius2(x0+B+G+(L0/2+(dw1/2+dw2/2)), y0+L0/2, 0, dw3/2);

 Seg[79]:= md2.ICreateLine2(x0+B+h,  y0, 0, x0+B+G+L0/2,  y0, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[80]:= md2.ICreateLine2(x0+B+h,  y0+L0, 0, x0+B+G+L0/2,  y0+L0, 0) ;
 md2.SketchAddConstraints ('sgHORIZONTAL');
 Seg[81]:= md2.ICreateLine2(x0+B+h,  y0, 0, x0+B+h,  y0+L0, 0) ;
 (MD2 as IModelDoc2).AddVerticalDimension(x0+B+0.03, y0+L0, 0);
 md2.SketchAddConstraints ('sgVERTICAL');

 Poi[0] := md2.ICreatePoint2(x0+B+G+L0, y0+L0/2, 0);
 Poi[1] := md2.ICreatePoint2(x0+B+G+L0/2-dw1/2-dw2, y0+L0/2, 0);
 Seg[81].Select(False);
 Poi[1].Select(true);
 MD2.AddHorizontalDimension(x0+B+G, y0+0.3, 0);


 Seg[81].Select(false);
 Poi[0].Select(true);
 MD2.AddHorizontalDimension2(x0+B+G+L0/2, y0-0.01, 0);

 Seg[65].Select(False);
 Poi[1].Select(true);
 (md2 as IModelDoc2).SketchAddConstraints('sgFIXED');

 Seg[63].Select(False);
(Seg[70] as ISketchArc).IGetCenterPoint2.Select(true);
(md2 as IModelDoc2).SketchAddConstraints('sgFIXED');

Seg[63].Select(False);
(Seg[69] as ISketchArc).IGetCenterPoint2.Select(true);
(md2 as IModelDoc2).SketchAddConstraints('sgCOINCIDENT');

Seg[63].Select(False);
(Seg[68] as ISketchArc).IGetCenterPoint2.Select(true);
(md2 as IModelDoc2).SketchAddConstraints('sgCOINCIDENT');

Seg[63].Select(False);
(Seg[67] as ISketchArc).IGetCenterPoint2.Select(true);
(md2 as IModelDoc2).SketchAddConstraints('sgFIXED');

Seg[63].Select(False);
(Seg[66] as ISketchArc).IGetCenterPoint2.Select(true);
(md2 as IModelDoc2).SketchAddConstraints('sgFIXED');

Seg[2].Select(False);
Seg[80].Select(False);
(md2 as IModelDoc2).SketchAddConstraints('sgPARALLEL');

Seg[5].Select(False);
Seg[79].Select(False);
(md2 as IModelDoc2).SketchAddConstraints('sgPARALLEL');

 md2.SetInferenceMode(True);
end;


end.
