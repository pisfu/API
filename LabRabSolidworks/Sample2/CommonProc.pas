unit CommonProc;

interface

uses SldWorks_TLB;

function FindPlane(md:IModelDoc2;a:integer):IRefPlane;
function StandNumber(N:real):real;
function CheckDim(Doc:Imodeldoc;Value:double):boolean;
procedure CalcParams(pb,dd:real; var ls,hs,cs,pp,h1,s,e,B,Bvn,A,d1,h,t,Rt:real);
function FindAxis(md:IModelDoc):IRefAxis;
function ICreateLine2DS(ModelDoc:IModelDoc;x1,y1,x2,y2:double):ISketchSegment;
procedure ICreateDimDS(ModelDoc:IModelDoc;Seg1,Seg2:ISketchSegment;x,y,Dim:Double);

implementation

function StandNumber(N:real):real;
var   i:integer;
  StNum:array[0..107] of real;
begin
   StNum[0] := 3.2;        StNum[54]:= 56;
   StNum[1] := 3.4;        StNum[55]:= 60;
   StNum[2] := 3.6;        StNum[56]:= 62;
   StNum[3] := 3.8;        StNum[57]:= 63;
   StNum[4] := 4;          StNum[58]:= 65;
   StNum[5] := 4.2;        StNum[59]:= 67;
   StNum[6] := 4.5;        StNum[60]:= 70;
   StNum[7] := 4.8;        StNum[61]:= 71;
   StNum[8] := 5;          StNum[62]:= 72;
   StNum[9] := 5.3;        StNum[63]:= 75;
   StNum[10]:= 5.6;        StNum[64]:= 80;
   StNum[11]:= 6;          StNum[65]:= 85;
   StNum[12]:= 6.3;        StNum[66]:= 90;
   StNum[13]:= 6.7;        StNum[67]:= 95;
   StNum[14]:= 7.1;        StNum[68]:= 100;
   StNum[15]:= 7.5;        StNum[69]:= 105;
   StNum[16]:= 8;          StNum[70]:= 110;
   StNum[17]:= 8.5;        StNum[71]:= 120;
   StNum[18]:= 9;          StNum[72]:= 125;
   StNum[19]:= 9.5;        StNum[73]:= 130;
   StNum[20]:= 10;         StNum[74]:= 140;
   StNum[21]:= 10.5;       StNum[75]:= 150;
   StNum[22]:= 11;         StNum[76]:= 160;
   StNum[23]:= 11.5;       StNum[77]:= 170;
   StNum[24]:= 12;         StNum[78]:= 180;
   StNum[25]:= 13;         StNum[79]:= 190;
   StNum[26]:= 14;         StNum[80]:= 200;
   StNum[27]:= 15;         StNum[81]:= 210;
   StNum[28]:= 16;         StNum[82]:= 220;
   StNum[29]:= 17;         StNum[83]:= 240;
   StNum[30]:= 18;         StNum[84]:= 250;
   StNum[31]:= 19;         StNum[85]:= 260;
   StNum[32]:= 20;         StNum[86]:= 280;
   StNum[33]:= 21;         StNum[87]:= 300;
   StNum[34]:= 22;         StNum[88]:= 320;
   StNum[35]:= 24;         StNum[89]:= 340;
   StNum[36]:= 25;         StNum[90]:= 360;
   StNum[37]:= 26;         StNum[91]:= 380;
   StNum[38]:= 28;         StNum[92]:= 400;
   StNum[39]:= 30;         StNum[93]:= 420;
   StNum[40]:= 32;         StNum[94]:= 450;
   StNum[41]:= 34;         StNum[95]:= 480;
   StNum[42]:= 35;         StNum[96]:= 500;
   StNum[43]:= 36;         StNum[97]:= 530;
   StNum[44]:= 38;         StNum[98]:= 560;
   StNum[45]:= 40;         StNum[99]:= 600;
   StNum[46]:= 42;         StNum[100]:=630;
   StNum[47]:= 45;         StNum[101]:=670;
   StNum[48]:= 47;         StNum[102]:=710;
   StNum[49]:= 48;         StNum[103]:=750;
   StNum[50]:= 50;         StNum[104]:=800;
   StNum[51]:= 52;         StNum[105]:=850;
   StNum[52]:= 53;         StNum[106]:=900;
   StNum[53]:= 55;         StNum[107]:=950;
   for i:=0 to 107 do
    if STNum[i]>=N then
     begin
      StandNumber:=STNum[i];
      break;
     end;
end;

procedure CalcParams(pb,dd:real; var ls,hs,cs,pp,h1,s,e,B,Bvn,A,d1,h,t,Rt:real);
var pt,dt:integer;
begin
 pt:=abs(trunc(pb*1000));
 case pt of
  0..12700:Pt:=12700;
  12701..15875:Pt:=15875;
  15876..19050:Pt:=19050;
  19051..25400:Pt:=25400;
  else Pt:=25400;
 end;
 case pt of
  12700:
   begin
    h1:=7; s:=1.5; e:=1.3; B:=28.5; Bvn:=5.4; A:=13.92; d1:=8.51; h:=11.8;
   end;
  15875:
   begin
    h1:=8.7; s:=2; e:=1.6; B:=38; Bvn:=9.65; A:=16.59; d1:=10.16; h:=14.8;
   end;
  19050:
   begin
    h1:=10.5; s:=3; e:=1.9; B:=57; Bvn:=12.7; A:=25.5; d1:=11.91; h:=18.2;
   end;
  25400:
   begin
    h1:=14; s:=3; e:=2.5; B:=69; Bvn:=15.88; A:=19.29; d1:=15.88; h:=24.2;
   end;
  end;
 dt:=abs(trunc(dd));
 case dt of
     0..46:Rt:=2;
    47..68:Rt:=2.5;
   69..100:Rt:=4;
  101..150:Rt:=5;
  151..200:Rt:=6;
  201..250:Rt:=7;
  else Rt:=8;
 end;
 t:=Rt;
 pp:=pt/1000;
 case dt of
  12..17:
   begin
    hs:=5; ls:=dt+2.3; cs:=1;
   end;
  18..22:
   begin
    hs:=6; ls:=dt+2.8; cs:=1.6;
   end;
  23..30:
   begin
    hs:=8; ls:=dt+3.3; cs:=2;
   end;
  31..38:
   begin
    hs:=10; ls:=dt+3.3; cs:=2;
   end;
  39..44:
   begin
    hs:=12; ls:=dt+3.3; cs:=2.5;
   end;
  45..50:
   begin
    hs:=14; ls:=dt+3.8; cs:=3;
   end;
  51..58:
   begin
    hs:=16; ls:=dt+4.3; cs:=3;
   end;
  59..65:
   begin
    hs:=18; ls:=dt+4.4; cs:=3;
   end;
  66..75:
   begin
    hs:=20; ls:=dt+4.9; cs:=4;
   end;
  76..85:
   begin
    hs:=22; ls:=dt+5.4; cs:=4;
   end;
  86..95:
   begin
    hs:=25; ls:=dt+5.4; cs:=4;
   end;
  96..110:
   begin
    hs:=28; ls:=dt+6.4; cs:=5;
   end;
  111..130:
   begin
    hs:=32; ls:=dt+7.4; cs:=5;
   end;
  131..150:
   begin
    hs:=32; ls:=dt+7.4; cs:=5;
   end
  else
   begin
    hs:=0; ls:=0; cs:=0;
   end;
 end;
end;

function CheckDim(Doc:IModelDoc;Value:double):boolean;
var sm:ISelectionMgr;
   unk:IUnknown;
   dim:IDimension;
begin
 Result:=false;
 sm:=doc.ISelectionManager;
 if sm=nil then Exit;
 if sm.GetSelectedObjectCount<=0 then Exit;
 if sm.GetSelectedObjectType(1)<>14 then Exit;
 unk:=sm.IGetSelectedObject(1);
 if unk=nil then exit;
 unk.QueryInterface(IID_IDimension,dim);
 if dim=nil then Exit;
 dim.SetValue2(value,0);
 Result:=true;
end;

function FindPlane(md:IModelDoc2;a:integer):IRefPlane;
var f:IFeature;
    i:Byte;
    v:Variant;
begin
 f:=md.IFirstFeature;
 i:=0;
 while (f<>nil)and(i<=3) do
  begin
   if f.GetTypeName='RefPlane' then
    begin
     inc(i);
     Result:=f.GetSpecificFeature as IRefPlane;
     v:=Result.GetRefPlaneParams;
     if (v[0]=0)and(v[1]=0)and(v[2]=0) then
      begin
       case a of
        //xy
        1:if (v[6]=0)and(v[7]=0)and(v[8]<>0) then Exit;
        //yz
        2:if (v[6]<>0)and(v[7]=0)and(v[8]=0) then Exit;
        //zx
        3:if (v[6]=0)and(v[7]<>0)and(v[8]=0) then Exit;
       end;
     end;
    end;
    f:=f.IGetNextFeature;
  end;
 Result:=nil;
end;

//по аналогии с FindPlane;
//но проще - ищет первую попавшуся Axis
//подразумевается, что осей больше одной
//в 90% случаев не предвидится.

function FindAxis(MD:IModelDoc):IRefAxis;
var f:IFeature;
begin
 f:=md.IFirstFeature;
 while f<>nil do
  if f.GetTypeName='RefAxis' then
   begin
    Result:=f.GetSpecificFeature as IRefAxis;
    Exit;
   end else f.GetNextFeature;
 Result:=nil;
end;

function ICreateLine2DS(ModelDoc:IModelDoc;x1,y1,x2,y2:double):ISketchSegment;
begin
 Result:=ModelDoc.ICreateLine2(x1,y1,0,x2,y2,0);
 if Result=nil then Exit;
 if x1=x2 then ModelDoc.SketchAddConstraints('sgVERTICAL');
 if y1=y2 then ModelDoc.SketchAddConstraints('sgHORIZONTAL');
end;

procedure ICreateDimDS(ModelDoc:IModelDoc;Seg1,Seg2:ISketchSegment;x,y,Dim:Double);
begin
 Seg1.Select(false);
 Seg2.Select(true);
 ModelDoc.AddDimension(x,y,0);
 CheckDim(ModelDoc,Dim*1000);
end;

end.
 