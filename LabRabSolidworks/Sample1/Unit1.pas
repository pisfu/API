unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,SldWorks_TLB, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MyObj1:ISldworks;
  MyObj2:IModelDoc2;
  //MyObj3:IPartDoc;
implementation


procedure GetThreePlanes(md: IModelDoc2;var Pl1,            // Спереди
                                            Pl2,            // Сверху
                                            Pl3,            // Справа
                                            PL: IFeature);
var feat_t: IFeature;
begin
  Pl1:=nil;
  Pl2:=nil;
  Pl3:=nil;
  PL:=NIL;
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
         if PL=nil then
         begin
           PL:=(feat_t as IFeature);
           feat_t:=(feat_t as IFeature).IGetNextFeature;
           continue;
         end;

      end;
    feat_t:=(feat_t as IFeature).IGetNextFeature;
   end;
end;



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var   LinShtrih1,LinShtrih2,Lin1,Lin2,Lin3,Lin4,Lin5,Lin6,surf3:IDispatch;
      L1,L2,L3,L4,L5,L6,b,c,x:double;
      b1, b2,fas1:IBody;
      ef1,ef2:IEnumFaces;
      ef3:IEnumEdges;
      Pl1,Pl2,Pl3,PL: IFeature;
      rg1,rg2:IFace;
      surf1,surf2: ISurface;
      a,d,e:integer;
      v1,v2: Variant;
      body,face,srf,feat2:IDispatch;
      Prt: IPartDoc;
      rg3:IEdge;
begin
  MyObj1:=CoSldWorks_.Create;
  MyObj1.Visible:=true;
  MyObj1.NewPart;
  MyObj2:=MyObj1.IActiveDoc2;
  GetThreePlanes(MyObj2,Pl1,Pl2,Pl3,PL);
  Pl1.Select(true);
  MyObj2.InsertSketch;

  //Построение эскиза
  LinShtrih1:=MyObj2.CreateLine2(0, 0, 0, 0.1, 0, 0);
   (LinShtrih1 as IsketchSegment).ConstructionGeometry:=true;
   L1:=StrToFloat(Edit1.text)/1000;
   L2:=StrToFloat(Edit2.text)/2000;
   L3:=StrToFloat(Edit3.text)/2000;
   L4:=StrToFloat(Edit4.text)/1000;
   L5:=StrToFloat(Edit5.text)/1000;
   L6:=StrToFloat(Edit6.text)/1000;
  Lin1:=MyObj2.CreateLine2 (0, 0, 0, 0, L2, 0);
  Lin2:=MyObj2.CreateLine2 (0, L2, 0, L1, L2, 0);
  Lin3:=MyObj2.CreateLine2 (L1, L2, 0, L1, L3, 0);
  Lin4:=MyObj2.CreateLine2 (L1, L3, 0,L1+L4, L3, 0);
  Lin5:=MyObj2.CreateLine2 (L1+L4, L3, 0, L1+L4, 0, 0);
  Lin6:=MyObj2.CreateLine2(L1+L4, 0, 0,0,0,0);
  //Вращать эскиз
  MyObj2.FeatureRevolve2(pi*2,false, 0,0, 0);

  // Выбрать поверхность
  b1:=(MyObj2 as IPartDoc).IBodyObject;
  ef1:=b1.EnumFaces;
  ef1.Next(1, rg1, a);
   while (rg1<>nil) and (a > 0) do
   begin
     surf1:= rg1.IGetSurface;
     if surf1.IsPlane then
     begin
       v1:=surf1.PlaneParams;
        if (v1[0]<>0) and (v1[1]=0) and (v1[2]=0)
          and (v1[3]=0) and (v1[4]=0) and (v1[5]=0)  then
        break;
     end;
     ef1.Next(1,rg1,a);
   end;
   if rg1<>nil then
     begin
       (rg1 as IEntity).Select(false);
     end;
 //Создать фаску
   MyObj2.FeatureChamferType(1,L5,pi/4,true,0,0,0,0);
   MyObj2.ClearSelection;


 //Сместить плоскость
  GetThreePlanes(MyObj2,Pl1,Pl2,Pl3,PL);
  Pl3.Select(true);
  MyObj2.CreatePlaneAtOffset3(L1+L4,FALSE,TRUE);
  GetThreePlanes(MyObj2,Pl1,Pl2,Pl3,PL);
  PL.Select(true);
  MyObj2.InsertSketch;
  MyObj2.SketchPolygon(0,0,L3/2,L6/2,6,true);
  MyObj2.FeatureCut5(true,true,false,1,1,L4,0.01,false,false,false,false,0,0,
                        false,false,false,false,-1,false);
  //Повернутый вырез
  GetThreePlanes(MyObj2,Pl1,Pl2,Pl3,PL);
  Pl1.Select(true);
   MyObj2.InsertSketch;
  b:=0.00765;
  c:=0.01683;
  x:=(c-b)*tan(pi/6);
  MyObj2.CreateLine2(L1+L4,b,0,L1+L4,c,0);
  MyObj2.CreateLine2(L1+L4,b,0,(L1+L4)-x,c,0);
  MyObj2.CreateLine2((L1+L4)-x,c,0,L1+L4,c,0);
  LinShtrih2:=MyObj2.CreateLine2(0,0,0,L1+L4,0,0);
   (LinShtrih2 as IsketchSegment).ConstructionGeometry:=true;
  MyObj2.FeatureRevolveCut2(2*pi,false,0,0,0);
  //Скругление
  //Выбор цилиндрической поверхности
  b2:=(MyObj2 as IPartDoc).IBodyObject;
  ef2:=b2.EnumFaces;
  ef2.Next(1, rg2, d);
   while (rg2<>nil) and (d > 0) do
   begin
    surf2:= rg2.IGetSurface;
     if surf2.IsCylinder  then
       begin
       v2:=surf2.CylinderParams;
           if (v2[6]=L2)then
           break;
       end;
     ef2.Next(1,rg2,d);
   end;
   if rg2<>nil then
     begin
       (rg2 as IEntity).Select(false);
     end;

 { //Выбор кромки
  fas1:=(MyObj2 as IPartDoc).IBodyObject;
   ef3:=(fas1 as IFace).EnumEdges;
   ef3.Next(1, rg3, e);
  //  while (rg3<>nil) and (e > 0)do
    // begin
      // surf3:=rg3.
     //(rg3 as IEntity).Select(false); }




{ body:=prt.IBodyObject2;
  face:=(body as IBody2).IGetFirstFace;
     while (face<>nil) do
       begin
         srf:=(face as Iface2).IGetEdges;
         feat2:=(face as IFace2).GetFeature;
           if (feat2<>nil)and((feat2 as IFeature).GetTypeName='Revolution') then
           if (srf as ISurface).IsCylinder then
         //    (face as IEntity).Select(true);
         //face:=(face as Iface2).IGetNextFace;
       end;   }

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
decimalseparator:='.'
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') and (Edit4.Text<>'')
    and (Edit5.Text<>'') and (Edit6.Text<>'') then
    begin
     Button1.Enabled:=true;
    end
    else
     Button1.Enabled:=false;
end;

procedure TForm1.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if  (key in [48..57]) then
   begin
     Button1.Enabled:=true;
    end
    else
     Button1.Enabled:=false;
end;


procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
var
  i:integer;
begin
if (key in ['A'..'Z','А'..'Я','a'..'z','а'..'я']) then
  key:=#0;
  If (key in [',','.']) and (key<>DecimalSeparator) then
  Key:=DecimalSeparator;
  If (Key=DecimalSeparator) and (Edit6.Text='') then key:=#0;
  for i:=1 to pos(DecimalSeparator,Edit6.Text)-1 do
  if Edit6.Text[i]=DecimalSeparator then key:=#0;
end;

end.


