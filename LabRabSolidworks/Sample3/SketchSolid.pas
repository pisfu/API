unit SketchSolid;

interface
uses
   Windows, SldWorks_TLB, Dialogs, ComObj, ActiveX, SysUtils,StdVcl, SwConst_TLB, Forms;

 Function OpenSW(SW: ISldWorks; MD:IModelDoc; L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;

implementation

 function Drawing(SW: ISldWorks; MD:IModelDoc; L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;forward;
 function CloseSWSave(SW: ISldWorks;MD: IModelDoc; Toggle, InfMode: WordBool): byte; forward;
 function CloseSWShow(SW: ISldWorks;MD: IModelDoc; Toggle, InfMode: WordBool): byte; forward;

 function OpenSW(SW: ISldWorks; MD:IModelDoc; L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;
var
   hr:         HRESULT;
   SelMgr:     ISelectionMgr;                 // Менеджер выделений

begin
 hr:=S_OK;

 SW:=CreateOleObject('SldWorks.Application') as ISldWorks;
  if SW<>nil then
    SW:=CreateOleObject('SldWorks.Application') as ISldWorks else
    Raise EOleSysError.CreateHelp('Документ SolidWorks не создан',0);
 if SW=nil then hr:=E_OUTOFMEMORY;
 if not SW.Visible then
 SW.Visible:=False;
 MD:=SW.NewDrawing (4) as IModelDoc;
  if MD<>nil then
    MD:=SW.NewDrawing (4) as IModelDoc else
    Raise EOleSysError.CreateHelp('Приложение SolidWorks не запущено',1);
 //сохранение пользовательских настроек
  Toggle := SW.GetUserPreferenceToggle(10);
  SW.SetUserPreferenceToggle(10, False);
  InfMode := MD.GetInferenceMode;
  MD.SetInferenceMode(False);
 ((MD as IDrawingDoc).GetCurrentSheet as ISheet).GetSize(W, SH); // получить размер листа

    SelMgr:=md.ISelectionManager;
   if SelMgr=nil then
    Raise EOleError.Create('Не получен указатель на менеджер выделений');

 Drawing(sw, MD, L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q, Toggle, InfMode);
end;

function Drawing(SW: ISldWorks; MD:IModelDoc; L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;
var
 Dim: IDimension;                          // указатель на последний размер
   Seg: array[0..100] of ISketchSegment;   // Линии профилей чертежа
   P: array[0..3] of ISketchPoint;         // Точки чертежа
   i:integer;
    begin
 // чертим первый вид
 ((MD as IDrawingDoc).GetCurrentSheet as ISheet).GetSize(W, SH);
 L:=(((dw1+dw2)/4)*sqrt(3)+dw2/2)*2;
 P[0]:=md.ICreatePoint2(W/2+h, SH/2, 0);
 P[1]:=md.ICreatePoint2(W/2+h+2*dw2+dw1+q, SH/2, 0);
 Seg[0]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2, SH/2-L/2-s, 0, W/4-c/2+c+bh+c+bt+a, SH/2-L/2-s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 MD.AddHorizontalDimension((W/4-c/2+c+bh+c+bt+a)-(W/4-a-bh-c-b6-c/2)/2, SH/2-L/2-s-0.005, 0);
 Seg[1]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2, SH/2-L/2-s, 0, W/4-a-bh-c-b6-c/2,SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a) , 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[2]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[3]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2-a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[4]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2+a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[5]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2-a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[6]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2+a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[7]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a, SH/2-L/2-s, 0, W/4-c/2+2*c+bh+bt+a, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[8]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[9]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a-a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[10]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a+a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[11]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a-a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a-a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[12]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a+a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a+a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[13]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2, SH/2+1/20*(W/4-c/2+2*c+bh+bt+a), 0, W/4-a-bh-c-b6-c/2, SH/2+L/2+s, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[14]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[15]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2-a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[16]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2+a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[17]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2-a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[18]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-a-bh-c-b6-c/2+a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[19]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2, SH/2+L/2+s, 0, W/4-c/2+2*c+bh+bt+a, SH/2+L/2+s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[20]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a, SH/2+L/2+s, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[21]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[22]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a-a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[23]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a+a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[24]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a-a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a-a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[25]:= md.ICreateLine2(W/4-c/2+2*c+bh+bt+a+a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0, W/4-c/2+2*c+bh+bt+a+a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

 Seg[26]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), SH/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[27]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-L/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+L/2, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[28]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-L/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-L/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[29]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-L/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-L/2+L, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[30]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+L/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2+L/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[31]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-dw1/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-dw1/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[32]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2+dw1/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+dw1/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[33]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a, SH/2-dw4/2-dw3, 0, W/4-a-bh-c-b6-c/2+a, SH/2+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');

 Seg[34]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh, SH/2-dw4/2-dw3, 0, W/4-a-bh-c-b6-c/2+a+bh, SH/2+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');


 Seg[35]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a, SH/2-dw4/2-dw3, 0, W/4-a-bh-c-b6-c/2+a+bh, SH/2-dw4/2-dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[36]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a, SH/2+dw4/2+dw3, 0, W/4-a-bh-c-b6-c/2+a+bh, SH/2+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[37]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a+1/10*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), SH/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[38]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2-dw1/2-dw2/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2+dw1/2+dw2/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[39]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2-dw1/2-dw2/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2+dw1/2+dw2/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[40]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2-dw1/2-dw2/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2-dw1/2-dw2/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[41]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2+dw1/2+dw2/2+dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2+dw1/2+dw2/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[42]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2-dw4/2-dw3, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[43]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2-dw4/2-dw3, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[44]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2-dw4/2-dw3, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2-dw4/2-dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[45]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2+dw4/2+dw3, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[46]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh, SH/2-dw4/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[47]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-dw4/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[48]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2-dw4/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[49]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2-dw4/2-dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+c, SH/2-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[50]:= md.ICreateLine2(W/4-a-bh-c-b6-c/2+a+bh, SH/2+dw4/2+dw3/2, 0, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[51]:= md.ICreateLine2(W/4-c/2, SH/2+dw4/2+dw3/2, 0, W/4-c/2+c, SH/2+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[52]:= md.ICreateLine2(W/4-c/2+c+bh, SH/2+dw4/2+dw3/2, 0, W/4-c/2+c+bh+c, SH/2+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[53]:= md.ICreateLine2(W/4-c/2+c+bh+c+bt, SH/2+dw4/2+dw3/2, 0, W/4-c/2+c+bh+c+bt+c, SH/2+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[54]:= md.ICreateLine2(W/4-c/2+c+bh+c, SH/2-dw4/2, 0, W/4-c/2+c+bh+c+bt, SH/2-dw4/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[55]:= md.ICreateLine2(W/4-c/2+c+bh+c, SH/2+dw4/2, 0, W/4-c/2+c+bh+c+bt, SH/2+dw4/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[56]:= md.ICreateLine2(W/4-bh-c-b6-c/2, SH/2-(dw4/2-dw1/2), 0, W/4-c-b6-c/2, SH/2-(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[57]:= md.ICreateLine2(W/4-bh-c-b6-c/2, SH/2+(dw4/2-dw1/2), 0, W/4-a-bh-c-b6-c/2+a+bh, SH/2+(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[58]:= md.ICreateLine2(W/4-c/2+c, SH/2-(dw4/2-dw1/2), 0, W/4-c/2+c+bh, SH/2-(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[59]:= md.ICreateLine2(W/4-c/2+c, SH/2+(dw4/2-dw1/2), 0, W/4-c/2+c+bh, SH/2+(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[60]:= md.ICreateLine2(W/4-c/2+c+bh+c, SH/2-(dw4/2-dw1/2), 0, W/4-c/2+c+bh+c+bt, SH/2-(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[61]:= md.ICreateLine2(W/4-c/2+c+bh+c, SH/2+(dw4/2-dw1/2), 0, W/4-c/2+c+bh+c+bt, SH/2+(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

    //Размеры
   try
     Seg[1].Select(False);
     Seg[33].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a/2, SH/2-dw4/2-dw3+0.005, 0);
     Seg[43].Select(False);
     Seg[7].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a/2, SH/2-dw4/2-dw3+0.005, 0);
     Seg[34].Select(False);
     Seg[27].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh+c/2, SH/2+dw4/2+dw3/2-0.005, 0);
     Seg[33].Select(False);
     Seg[34].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh/2, SH/2-dw4/2-dw3+0.005, 0);
     Seg[29].Select(False);
     Seg[38].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c/2, SH/2-dw4/2-dw3/2-0.005, 0);
     Seg[39].Select(False);
     Seg[42].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c/2, SH/2+dw4/2+dw3/2-0.005, 0);
     Seg[27].Select(False);
     Seg[29].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh+c+b6/2, SH/2-L/2+0.005, 0);
     Seg[38].Select(False);
     Seg[39].Select(True);
     MD.AddHorizontalDimension(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh/2, SH/2-dw1/2-dw2/2-dw3/2+0.005, 0);

     Seg[28].Select(False);
     Seg[30].Select(True);
     MD.AddVerticalDimension2(W/4-a-bh-c-b6-c/2-0.01, SH/2, 0);
     except
    Raise EOleError.Create('Не удалось установить размер на первом виде');

  end;
   //Чертим второй вид

 Seg[62]:= md.ICreateLine2(W/2, SH/2, 0, W/2+h+dw2+dw2+dw1+q, SH/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[62].ConstructionGeometry:=True;
 Seg[63]:= md.ICreateLine2(W/2+dw2+dw1/2+h, SH/2-L/2-2*s, 0, W/2+dw2+dw1/2+h, SH/2+L/2+2*s, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[63].ConstructionGeometry:=True;
 Seg[64]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h, SH/2, 0, dw1/2);
 MD.AddDiameterDimension2(W/2+dw2+dw1/2+h+0.005, SH/2-0.01, 0);
 Seg[65]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h, SH/2, 0, dw4/2);
 Seg[65].ConstructionGeometry:=True;
 MD.AddDiameterDimension2(W/2+dw2+dw1/2+h+0.005, SH/2-0.005, 0);
 Seg[66]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h, SH/2, 0, (dw4+dw3/2)/2);
 Seg[66].ConstructionGeometry:=True;
 Seg[67]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h, SH/2, 0, (dw4+dw3)/2);
 Seg[68]:= md.ICreateArc2(W/2+dw2+dw1/2+h, SH/2,0, W/2+dw2+dw1/2+h,SH/2+L/2+s,0, W/2+dw2+dw1/2+h, SH/2-L/2-s,0, -1);
 Seg[69]:= md.ICreateLine2(W/2, SH/2-L/2-s, 0, W/2+dw2+dw1/2+h, SH/2-L/2-s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[70]:= md.ICreateLine2(W/2, SH/2+L/2+s, 0, W/2+dw2+dw1/2+h, SH/2+L/2+s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[71]:= md.ICreateLine2(W/2, SH/2-L/2-s, 0, W/2, SH/2+L/2+s, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[72]:= md.ICreateCircleByRadius2(W/2+h+dw2+dw1+dw2/2, SH/2, 0, dw3/2);
 Seg[73]:= md.ICreateCircleByRadius2(W/2+h+dw2+dw1+dw2/2, SH/2, 0, dw2/2);
 Seg[74]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2+((dw1+dw2)/4)*sqrt(3), 0, dw3/2);
 Seg[74].ConstructionGeometry:=True;
 Seg[75]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2+((dw1+dw2)/4)*sqrt(3), 0, dw2/2);
 MD.AddDiameterDimension2(W/2+dw2+dw1/2+h-((dw1+dw2)/4)-dw2/2-0.003, SH/2+((dw1+dw2)/4)*sqrt(3)+dw2/2+0.003, 0);
 Seg[76]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2-((dw1+dw2)/4)*sqrt(3), 0, dw3/2);
 Seg[76].ConstructionGeometry:=True;
 MD.AddDiameterDimension2(W/2+dw2+dw1/2+h-((dw1+dw2)/4)+dw2/2+0.003, SH/2-((dw1+dw2)/4)*sqrt(3)-dw2/2-0.003, 0);
 Seg[77]:= md.ICreateCircleByRadius2(W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2-((dw1+dw2)/4)*sqrt(3), 0, dw2/2);
 Seg[78]:= md.ICreateLine2(W/2+dw2+dw1/2+h, SH/2, 0, W/2+dw2+dw1/2+h-((dw1+dw2)/2), SH/2+((dw1+dw2)/2)*sqrt(3), 0) ;
 Seg[78].ConstructionGeometry:=True;
 Seg[79]:= md.ICreateLine2(W/2+dw2+dw1/2+h, SH/2, 0, W/2+dw2+dw1/2+h-((dw1+dw2)/2), SH/2-((dw1+dw2)/2)*sqrt(3), 0) ;
 Seg[79].ConstructionGeometry:=True;
 Seg[80]:= md.ICreateArc2(W/2+dw2+dw1/2+h, SH/2,0, W/2+dw2+dw1/2+h-(dw1+2*dw2)/4,SH/2-((dw1+2*dw2)/4)*sqrt(3),0, W/2+h, SH/2,0, -1);
 Seg[80].ConstructionGeometry:=True;
 for i:=Low(Seg)+2 to High(Seg)-20 do
    if Seg[i]=nil then
      Raise EOleError.Create('Не создана линия номер '+IntToStr(i));
 //размеры
 try
   Seg[69].Select(False);
   Seg[70].Select(True);
   MD.AddVerticalDimension2(W/2-0.005, SH/2, 0);
     Seg[71].Select(False);
     P[0].Select(True);
     MD.AddHorizontalDimension(W/2+h/2, SH/2-L/2, 0);
     Seg[71].Select(False);
     P[1].Select(True);
     MD.AddHorizontalDimension(W/2+(h+2*dw2+dw1+q)/2, SH/2-L/2-2*s, 0);
   except
    Raise EOleError.Create('Не удалось установить размер на втором виде');
  end;
  //взаимосвязи
  try
   Seg[62] .Select(false);
   P[0].Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[62] .Select(false);
   P[1].Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

    Seg[1].Select(false);
   (Seg[0] as ISketchLine).IGetStartPoint2.Select(true);
    MD.SketchAddConstraints('sgCOINCIDENT');
     (Seg[1] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[0] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[7].Select(false);
   (Seg[0] as ISketchLine).IGetEndPoint2.Select(true);
    MD.SketchAddConstraints('sgCOINCIDENT');
   (Seg[7] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[0] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[19].Select(false);
   (Seg[13] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   (Seg[13] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[19] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[19] .Select(false);
   (Seg[20] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   (Seg[19] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[20] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[1] .Select(false);
   Seg[13].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[7] .Select(false);
   Seg[20].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[26] .Select(false);
   Seg[37].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[50] .Select(false);
   Seg[51].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[51] .Select(false);
   Seg[52].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[52] .Select(false);
   Seg[53].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[46] .Select(false);
   Seg[47].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[47] .Select(false);
   Seg[48].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[48] .Select(false);
   Seg[49].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');

    Seg[57].Select(false);
    Seg[59] .Select(true);
    MD.SketchAddConstraints('sgCOLINEAR');
   Seg[59] .Select(false);
   Seg[61].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[56] .Select(false);
   Seg[58].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[58] .Select(false);
   Seg[60].Select(true);
   MD.SketchAddConstraints('sgCOLINEAR');
   Seg[1] .Select(false);
   Seg[13].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[7] .Select(false);
   Seg[20].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');

   (Seg[33] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[35] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');

   (Seg[34] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[35] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[34] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[36] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[33] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[36] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');

    Seg[2].Select(false);
   (Seg[1] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   (Seg[2] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[3] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[2] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[4] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[3] .Select(false);
   Seg[4].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[5].Select(false);
   (Seg[3] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[6].Select(false);
   (Seg[4] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[5] .Select(false);
   Seg[6].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');

   Seg[8].Select(false);
   (Seg[7] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   (Seg[8] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[9] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[8] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[10] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[9] .Select(false);
   Seg[10].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[11].Select(false);
   (Seg[9] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[12].Select(false);
   (Seg[10] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[11] .Select(false);
   Seg[12].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');


    Seg[14].Select(false);
   (Seg[13] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   (Seg[14] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[15] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[14] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[16] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[15] .Select(false);
   Seg[16].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[17].Select(false);
   (Seg[15] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[18].Select(false);
   (Seg[16] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[17] .Select(false);
   Seg[18].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');

   Seg[21].Select(false);
   (Seg[20] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   (Seg[21] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[22] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[21] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[23] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   Seg[22] .Select(false);
   Seg[23].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[24].Select(false);
   (Seg[22] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[25].Select(false);
   (Seg[23] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[24] .Select(false);
   Seg[25].Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[33] .Select(false);
   (Seg[57] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[34] .Select(false);
   (Seg[57] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[33] .Select(false);
   (Seg[56] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[34] .Select(false);
   (Seg[56] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    Seg[34] .Select(false);
   (Seg[50] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[27] .Select(false);
   (Seg[50] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[34] .Select(false);
   (Seg[46] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[27] .Select(false);
   (Seg[46] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    Seg[29] .Select(false);
   (Seg[51] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[38] .Select(false);
   (Seg[51] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    Seg[29] .Select(false);
   (Seg[47] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[38] .Select(false);
   (Seg[47] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

    Seg[39] .Select(false);
   (Seg[52] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[42] .Select(false);
   (Seg[52] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    Seg[39] .Select(false);
   (Seg[48] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[42] .Select(false);
   (Seg[48] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

     Seg[43] .Select(false);
   (Seg[53] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[43] .Select(false);
   (Seg[49] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   (Seg[57] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[56] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgSAMELENGTH');

   (Seg[27] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[28] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[27] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[30] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
    (Seg[29] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[28] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[29] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[30] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');

    Seg[27] .Select(false);
   (Seg[32] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[27] .Select(false);
   (Seg[31] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[29] .Select(false);
   (Seg[32] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[29] .Select(false);
   (Seg[31] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

    (Seg[38] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[40] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[38] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[41] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
    (Seg[39] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[40] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[39] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[41] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');

     (Seg[42] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[44] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[42] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[45] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
    (Seg[43] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[44] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[43] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[45] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');

    Seg[38] .Select(false);
   (Seg[59] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[38] .Select(false);
   (Seg[58] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[39] .Select(false);
   (Seg[59] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[39] .Select(false);
   (Seg[58] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[42] .Select(false);
   (Seg[61] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[42] .Select(false);
   (Seg[60] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[43] .Select(false);
   (Seg[61] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[43] .Select(false);
   (Seg[60] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[42] .Select(false);
   (Seg[55] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[42] .Select(false);
   (Seg[54] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[43] .Select(false);
   (Seg[55] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[43] .Select(false);
   (Seg[54] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   (Seg[71] as ISketchLine).IGetStartPoint2.Select(false);
   (Seg[69] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');
   (Seg[71] as ISketchLine).IGetEndPoint2.Select(false);
   (Seg[70] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgMERGEPOINTS');

   Seg[68] .Select(false);
   (Seg[70] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[68] .Select(false);
   (Seg[69] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[63] .Select(false);
   (Seg[70] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[63] .Select(false);
   (Seg[69] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

     Seg[63] .Select(false);
   (Seg[70] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[63] .Select(false);
   (Seg[69] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[71].Select(false);
   (Seg[62] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');

   Seg[64].Select(false);
   Seg[65].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');
   Seg[65].Select(false);
   Seg[66].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');
   Seg[66].Select(false);
   Seg[67].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');
   Seg[67].Select(false);
   Seg[68].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');

   Seg[63].Select(false);
   (Seg[68] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgATMIDDLE');
   Seg[63] .Select(false);
   (Seg[68] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    P[1].Select(false);
   Seg[68].Select(True);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[63] .Select(false);
   (Seg[68] as ISketchArc).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[62] .Select(false);
   (Seg[72] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[64].Select(false);
   Seg[80].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');

   Seg[77].Select(false);
   Seg[80].Select(True);
   MD.SketchAddConstraints('sgTANGENT');

   Seg[62] .Select(false);
   (Seg[80] as ISketchArc).IGetStartPoint2;
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[79] .Select(false);
   (Seg[80] as ISketchArc).IGetEndPoint2;
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[62] .Select(false);
   (Seg[79] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[63] .Select(false);
   (Seg[78] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[62] .Select(false);
   (Seg[78] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[63] .Select(false);
   (Seg[78] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[79] .Select(false);
   (Seg[76] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[79] .Select(false);
   (Seg[77] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[76].Select(false);
   Seg[77].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');

   Seg[62] .Select(false);
   (Seg[79] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    Seg[63] .Select(false);
   (Seg[79] as ISketchLine).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
    Seg[78] .Select(false);
   (Seg[74] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[78] .Select(false);
   (Seg[75] as ISketchArc).IGetCenterPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');
   Seg[74].Select(false);
   Seg[75].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');
   Seg[72].Select(false);
   Seg[73].Select(True);
   MD.SketchAddConstraints('sgCONCENTRIC');

   P[0] .Select(false);
   (Seg[80] as ISketchArc).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[79] .Select(false);
   (Seg[80] as ISketchArc).IGetStartPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   P[1] .Select(false);
   (Seg[62] as ISketchLine).IGetEndPoint2.Select(true);
   MD.SketchAddConstraints('sgCOINCIDENT');

   Seg[64].Select(false);
   Seg[75].Select(True);
   MD.SketchAddConstraints('sgTANGENT');
   Seg[64].Select(false);
   Seg[77].Select(True);
   MD.SketchAddConstraints('sgTANGENT');
   Seg[64].Select(false);
   Seg[73].Select(True);
   MD.SketchAddConstraints('sgTANGENT');

   Seg[63].Select(false);
   Seg[75].Select(True);
   MD.SketchAddConstraints('sgTANGENT');
   Seg[63].Select(false);
   Seg[77].Select(True);
   MD.SketchAddConstraints('sgTANGENT');

   Seg[75].Select(false);
   Seg[73].Select(True);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[76].Select(false);
   Seg[74].Select(True);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[76].Select(false);
   Seg[72].Select(True);
   MD.SketchAddConstraints('sgSAMELENGTH');
   Seg[0].Select(false);
   Seg[69].Select(True);
   MD.SketchAddConstraints('sgPARALLEL');
   Seg[19].Select(false);
   Seg[70].Select(True);
   MD.SketchAddConstraints('sgPARALLEL');
   except
    Raise EOleError.Create('Не удалось задать взаимосвязь');
  end;

CloseSWSave(SW, MD, Toggle, InfMode);
end;


function CloseSWSave(SW: ISldWorks;MD: IModelDoc; Toggle, InfMode: WordBool): byte;
 var SD1:TSaveDialog;
begin
  MD.SetInferenceMode(InfMode);
  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, Toggle);

  try
    SD1:=TSaveDialog.Create(nil);
    SD1.DefaultExt:='slddrw;';
    SD1.Filter:='Чертеж (*.drw;*.slddrw)|*.drw,*.slddrw';
    SD1.FilterIndex:=0;

    if SD1.Execute then
      MD.SaveAs(SD1.FileName);
  finally
    SD1.Free;
  end;
end;

function CloseSWShow(SW: ISldWorks;MD: IModelDoc; Toggle, InfMode: WordBool): byte;
begin
  MD.SetInferenceMode(InfMode);
  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, Toggle);

  SW.Visible:=True;
end;


end.
