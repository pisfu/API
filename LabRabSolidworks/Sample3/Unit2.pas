unit SketchS;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, StdCtrls, SldWorks_TLB, CommonModelingUnit, ComObj, ExtCtrls,
  Controls;
  type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
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
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
   Form1: TForm1;
   SW: ISldWorks;                         // Ссылка на приложение
   MD: IModelDoc;                         // Документ модели
   SelMgr: ISelectionMgr;                 // Менеджер выделений
   CP,PP1,PP2: ISketchPoint;              // исходная точка
   CLR: ISketchSegment;                   // Центральная осевая
   Dim: IDimension;                       // указатель на последний размер
   Seg: array[0..50] of ISketchSegment;   // Линии профилей чертежа

implementation
procedure TForm1.Button1Click(Sender: TObject);
 var SW: ISldWorks;
 hr:HRESULT;
 x0,y0,L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,H,W: Double;
    begin
   x0:=0.02;
   y0:=x0;
   L:=StrToFloat(Edit2.Text)/1000;
   s:=StrToFloat(Edit4.Text)/1000;
   bh:=StrToFloat(Edit5.Text)/1000;
   b6:=StrToFloat(Edit6.Text)/1000;
   bt:=StrToFloat(Edit7.Text)/1000;
   a:=StrToFloat(Edit8.Text)/1000;
   c:=StrToFloat(Edit10.Text)/1000;
   dw1:=StrToFloat(Edit9.Text)/1000;
   dw2:=StrToFloat(Edit3.Text)/1000;
   dw3:=StrToFloat(Edit11.Text)/1000;
   dw4:=StrToFloat(Edit12.Text)/1000;

  hr:=S_OK;

 // Запустить SolidWorks
 SW:=CreateOleObject('SldWorks.Application') as ISldWorks;
 if SW=nil then hr:=E_OUTOFMEMORY;
 if not SW.Visible then
 SW.Visible:=True;
 MD:=SW.NewDrawing2(50,'чертеж',2,297/1000,210/1000) as IModelDoc;
 MD.GetInferenceMode;  //получить привязки
 MD.SetInferenceMode(false); //отключить привязки
 ((MD as IDrawingDoc).GetCurrentSheet as ISheet).GetSize(W, H);
 if MD=nil then hr:=E_OUTOFMEMORY;
   SelMgr:=md.ISelectionManager;
 if SelMgr=nil then hr:=E_OUTOFMEMORY;
 if not md.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0) then
    hr:=S_FALSE;
 cp:= SelMgr.IGetSelectedObject(1) as ISketchPoint;
 if cp = nil then
    hr:=S_FALSE;
 md.ClearSelection;
 // чертим первый вид
 Seg[0]:= md.ICreateLine2(x0, y0, 0, x0+a+bh+c+b6+c+bh+c+bt+a, Y0, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[1]:= md.ICreateLine2(x0, y0, 0, x0,y0+L/2+s-1/10*(x0+a+bh+c+b6+c+bh+c+bt+a) , 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[2]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c+bt+a, y0, 0, x0+a+bh+c+b6+c+bh+c+bt+a, y0+L/2+s-1/10*(x0+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[3]:= md.ICreateLine2(x0, y0+L/2+s+1/10*(x0+a+bh+c+b6+c+bh+c+bt+a), 0, x0, y0+L+2*s, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[4]:= md.ICreateLine2(x0, y0+L+2*s, 0, x0+a+bh+c+b6+c+bh+c+bt+a, y0+L+2*s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[5]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c+bt+a, y0+L+2*s, 0, x0+a+bh+c+b6+c+bh+c+bt+a, y0+L/2+s+1/10*(x0+a+bh+c+b6+c+bh+c+bt+a), 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[6]:= md.ICreateLine2(x0-1/10*(x0+a+bh+c+b6+c+bh+c+bt+a), y0+L/2+s, 0, x0+a+bh+c, y0+L/2+s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[7]:= md.ICreateLine2(x0+a+bh+c, y0+s, 0, x0+a+bh+c, y0+L+s, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[8]:= md.ICreateLine2(x0+a+bh+c, y0+s, 0, x0+a+bh+c+b6, y0+s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[9]:= md.ICreateLine2(x0+a+bh+c+b6, y0+s, 0, x0+a+bh+c+b6, y0+L+s, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[10]:= md.ICreateLine2(x0+a+bh+c, y0+L+s, 0, x0+a+bh+c+b6, y0+L+s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[11]:= md.ICreateLine2(x0+a+bh+c+b6, y0+L/2+s-dw1/2, 0, x0+a+bh+c, y0+L/2+s-dw1/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[12]:= md.ICreateLine2(x0+a+bh+c+b6, y0+L/2+s+dw1/2, 0, x0+a+bh+c, y0+L/2+s+dw1/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[13]:= md.ICreateLine2(x0+a, y0+L/2+s-dw4/2-dw3, 0, x0+a, y0+L/2+s+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[14]:= md.ICreateLine2(x0+a+bh, y0+L/2+s-dw4/2-dw3, 0, x0+a+bh, y0+L/2+s+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[15]:= md.ICreateLine2(x0+a, y0+L/2+s-dw4/2-dw3, 0, x0+a+bh, y0+L/2+s-dw4/2-dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[16]:= md.ICreateLine2(x0+a, y0+L/2+s+dw4/2+dw3, 0, x0+a+bh, y0+L/2+s+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[17]:= md.ICreateLine2(x0+a+bh+c+b6, y0+L/2+s, 0, x0+a+bh+c+b6+c+bh+c+bt+a+1/10*(x0+a+bh+c+b6+c+bh+c+bt+a), y0+L/2+s, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[18]:= md.ICreateLine2(x0+a+bh+c+b6+c, y0+L/2+s-dw1/2-dw2/2-dw3/2, 0, x0+a+bh+c+b6+c, y0+L/2+s+dw1/2+dw2/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[19]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh, y0+L/2+s-dw1/2-dw2/2-dw3/2, 0, x0+a+bh+c+b6+c+bh, y0+L/2+s+dw1/2+dw2/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[20]:= md.ICreateLine2(x0+a+bh+c+b6+c, y0+L/2+s-dw1/2-dw2/2-dw3/2, 0, x0+a+bh+c+b6+c+bh, y0+L/2+s-dw1/2-dw2/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[21]:= md.ICreateLine2(x0+a+bh+c+b6+c, y0+L/2+s+dw1/2+dw2/2+dw3/2, 0, x0+a+bh+c+b6+c+bh, y0+L/2+s+dw1/2+dw2/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[22]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s-dw4/2-dw3, 0, x0+a+bh+c+b6+c+bh+c, y0+L/2+s+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[23]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s-dw4/2-dw3, 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgVERTICAL');
 Seg[24]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s-dw4/2-dw3, 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s-dw4/2-dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[25]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s+dw4/2+dw3, 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s+dw4/2+dw3, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[26]:= md.ICreateLine2(x0+a+bh, y0+L/2+s-dw4/2-dw3/2, 0, x0+a+bh+c, y0+L/2+s-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[27]:= md.ICreateLine2(x0+a+bh+c+b6, y0+L/2+s-dw4/2-dw3/2, 0, x0+a+bh+c+b6+c, y0+L/2+s-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[28]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh, y0+L/2+s-dw4/2-dw3/2, 0, x0+a+bh+c+b6+c+bh+c, y0+L/2+s-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[29]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s-dw4/2-dw3/2, 0, x0+a+bh+c+b6+c+bh+c+bt+c, y0+L/2+s-dw4/2-dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[30]:= md.ICreateLine2(x0+a+bh, y0+L/2+s+dw4/2+dw3/2, 0, x0+a+bh+c, y0+L/2+s+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[31]:= md.ICreateLine2(x0+a+bh+c+b6, y0+L/2+s+dw4/2+dw3/2, 0, x0+a+bh+c+b6+c, y0+L/2+s+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[32]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh, y0+L/2+s+dw4/2+dw3/2, 0, x0+a+bh+c+b6+c+bh+c, y0+L/2+s+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[33]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s+dw4/2+dw3/2, 0, x0+a+bh+c+b6+c+bh+c+bt+c, y0+L/2+s+dw4/2+dw3/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[34]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s-dw4/2, 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s-dw4/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[35]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s+dw4/2, 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s+dw4/2, 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[36]:= md.ICreateLine2(x0+a, y0+L/2+s-(dw4/2-dw1/2), 0, x0+a+bh, y0+L/2+s-(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[37]:= md.ICreateLine2(x0+a, y0+L/2+s+(dw4/2-dw1/2), 0, x0+a+bh, y0+L/2+s+(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[38]:= md.ICreateLine2(x0+a+bh+c+b6+c, y0+L/2+s-(dw4/2-dw1/2), 0, x0+a+bh+c+b6+c+bh, y0+L/2+s-(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[39]:= md.ICreateLine2(x0+a+bh+c+b6+c, y0+L/2+s+(dw4/2-dw1/2), 0, x0+a+bh+c+b6+c+bh, y0+L/2+s+(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[40]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s-(dw4/2-dw1/2), 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s-(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');
 Seg[41]:= md.ICreateLine2(x0+a+bh+c+b6+c+bh+c, y0+L/2+s+(dw4/2-dw1/2), 0, x0+a+bh+c+b6+c+bh+c+bt, y0+L/2+s+(dw4/2-dw1/2), 0) ;
 md.SketchAddConstraints ('sgHORIZONTAL');

 //Чертим второй вид
  //Seg[42]:= md.ICreateLine2(x0, y0, 0, x0+a+bh+c+b6+c+bh+c+bt+a, Y0, 0) ;
 //md.SketchAddConstraints ('sgHORIZONTAL');
end;
end.
