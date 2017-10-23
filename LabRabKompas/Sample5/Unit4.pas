unit Unit4;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, jpeg, ExtCtrls, TeeFilters, CommonModelingUnit, KompasAPI7_TLB ,Kompas6Constants_TLB, COMObj;

function AddLine(LSS: ILineSegments; X1,Y1,X2,Y2: Extended): ILineSegment;
procedure Kompas(B, L0, a, bH, b6, ba, c, h, dw1, dw2, dw3, dw4: extended);

implementation

function AddLine(LSS: ILineSegments; X1,Y1,X2,Y2: Extended): ILineSegment;
var LS: ILineSegment;
begin
 LS := LSS.Add;
 LS.X1 := X1;
 LS.Y1 := Y1;
 LS.X2 := X2;
 LS.Y2 := Y2;
 LS.Style := ksCSThin;
 LS.Update;
 Result := LS;
end;

function AddLineAxial(LSS: ILineSegments; X1,Y1,X2,Y2: Extended): ILineSegment;
var LS: ILineSegment;
begin
 LS := LSS.Add;
 LS.X1 := X1;
 LS.Y1 := Y1;
 LS.X2 := X2;
 LS.Y2 := Y2;
 LS.Style := ksCSAxial;
 LS.Update;
 Result := LS;
end;
function AddArc(Arcs: IArcs; Xc,Yc,R: Extended): IArc;
var Arc: IArc;
begin
  Arc := Arcs.Add;
  Arc.Xc := Xc;
  Arc.Yc := Yc;
  Arc.Radius := R;
  Arc.Angle1 := 0;
  Arc.Angle2 := 360;
  Arc.Style := ksCSThin;
  Arc.Update;
  Result := Arc;
end;

function AddArcAxial(Arcs: IArcs; Xc,Yc,R: Extended): IArc;
var Arc: IArc;
begin
  Arc := Arcs.Add;
  Arc.Xc := Xc;
  Arc.Yc := Yc;
  Arc.Radius := R;
  Arc.Angle1 := 0;
  Arc.Angle2 := 360;
  Arc.Style := ksCSAxial;
  Arc.Update;
  Result := Arc;
end;

procedure Kompas(B, L0, a, bH, b6, ba, c, h, dw1, dw2, dw3, dw4: extended);
var
  j,G,x0,y0: extended;
  KP: IApplication;
  KD: IKompasDocument;
  LSS: ILineSegments;
  Arcs: IArcs;
  LineSeg: array[0..120] of ILineSegment;
  ArcSeg: array[0..120] of IArc;

begin
  G:=100;
  x0:=50;
  y0:=50;
  j := 6;
  KP := Co_Application.Create;
  KP.Visible := true;
  KD := KP.Documents.Add(1,true);
  KD := KP.ActiveDocument;
  KD.LayoutSheets.Item[0].Format.Format:=ksFormatUser;
  KD.LayoutSheets.Item[0].Format.FormatWidth:=900;
  KD.LayoutSheets.Item[0].Format.FormatHeight:=594;
  KD.LayoutSheets.Item[0].Update;
  LSS := ((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as IDrawingContainer).LineSegments;
  Arcs := ((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as IDrawingContainer).Arcs;

 LineSeg[0]:=AddLine(LSS, x0,y0,x0,y0+L0/2-25);
 LineSeg[1]:=AddLine(LSS, x0, y0+L0/2+25,x0, y0+L0);
 LineSeg[2]:=AddLine(LSS, x0, y0+L0, x0+B, y0+L0);
 LineSeg[3]:=AddLine(LSS, x0+B, y0+L0, x0+B, y0+L0/2+25);
 LineSeg[4]:=AddLine(LSS, x0+B, y0+L0/2-25,x0+B, y0);
 LineSeg[5]:=AddLine(LSS, x0+B, y0, x0, y0);
 LineSeg[6]:=AddLine(LSS, x0-10, y0+L0/2-25, x0+10, y0+L0/2-25);
 LineSeg[7]:=AddLine(LSS, x0-10, y0+L0/2+25,x0+10, y0+L0/2+25);
 LineSeg[8]:=AddLine(LSS, x0+B-10, y0+L0/2-25,x0+B+10, y0+L0/2-25);
 LineSeg[9]:=AddLine(LSS,x0+B-10, y0+L0/2+25,x0+B+10, y0+L0/2+25);
 LineSeg[10]:=AddLine(LSS,x0-10, y0+L0/2-25, x0-10, y0+L0/2-15);
 LineSeg[11]:=AddLine(LSS, x0+10, y0+L0/2-25,x0+10, y0+L0/2-15);
 LineSeg[12]:=AddLine(LSS, x0+10, y0+L0/2+25,x0+10, y0+L0/2+15);
 LineSeg[13]:=AddLine(LSS, x0-10, y0+L0/2+25,x0-10, y0+L0/2+15);
 LineSeg[14]:=AddLine(LSS, x0+B-10, y0+L0/2-25, x0+B-10, y0+L0/2-15);
 LineSeg[15]:=AddLine(LSS,  x0+B+10, y0+L0/2-25, x0+B+10, y0+L0/2-15);
 LineSeg[16]:=AddLine(LSS, x0+B-10, y0+L0/2+25, x0+B-10, y0+L0/2+15);
 LineSeg[17]:=AddLine(LSS, x0+B+10, y0+L0/2+25, x0+B+10, y0+L0/2+15);
 LineSeg[18]:=AddLine(LSS, x0-15, y0+L0/2-15, x0-5, y0+L0/2-15);
 LineSeg[19]:=AddLine(LSS, x0+5, y0+L0/2-15, x0+15, y0+L0/2-15);
 LineSeg[20]:=AddLine(LSS, x0-15, y0+L0/2+15,x0-5, y0+L0/2+15);
 LineSeg[21]:=AddLine(LSS, x0+5, y0+L0/2+15,x0+15, y0+L0/2+15);
 LineSeg[22]:=AddLine(LSS, x0+B-15, y0+L0/2+15, x0+B-5,  y0+L0/2+15);
 LineSeg[23]:=AddLine(LSS, x0+B+5, y0+L0/2+15, x0+B+15, y0+L0/2+15);
 LineSeg[24]:=AddLine(LSS, x0+B-15, y0+L0/2-15, x0+B-5, y0+L0/2-15);

 LineSeg[25]:=AddLine(LSS, x0+B+5, y0+L0/2-15,x0+B+15, y0+L0/2-15);
 LineSeg[26]:=AddLine(LSS, x0+A, y0+L0/2-dw4/2, x0+A,y0+L0/2-dw4/2+dw4);
 LineSeg[27]:=AddLine(LSS, x0+A, y0+L0/2-dw4/2+dw4, x0+A+bH, y0+L0/2-dw4/2+dw4);
 LineSeg[28]:=AddLine(LSS, x0+A+bH, y0+L0/2-dw4/2+dw4, x0+A+bH, y0+L0/2-dw4/2);
 LineSeg[29]:=AddLine(LSS, x0+A+bH, y0+L0/2-dw4/2, x0+A, y0+L0/2-dw4/2);
 LineSeg[30]:=AddLine(LSS,x0+A+bH, y0+L0/2+dw1/2+dw2/2, x0+A+bH+c, y0+L0/2+dw1/2+dw2/2);
 LineSeg[31]:=AddLine(LSS, x0+A+bH, y0+L0/2-dw1/2-dw2/2, x0+A+bH+c, y0+L0/2-dw1/2-dw2/2);
 LineSeg[32]:=AddLine(LSS, x0+A+bH+c, y0+A, x0+A+bH+c, y0+(L0-A));
 LineSeg[33]:=AddLine(LSS, x0+A+bH+c, y0+(L0-A), x0+A+bH+c+b6, y0+(L0-A));
 LineSeg[34]:=AddLine(LSS, x0+A+bH+c+b6, y0+(L0-A), x0+A+bH+c+b6, y0+A);
 LineSeg[35]:=AddLine(LSS, x0+A+bH+c+b6, y0+A, x0+A+bH+c, y0+A);
 LineSeg[36]:=AddLine(LSS, x0+A+bH+c+b6, y0+L0/2+dw1/2+dw2/2, x0+A+bH+2*c+b6, y0+L0/2+dw1/2+dw2/2);
 LineSeg[37]:=AddLine(LSS, x0+A+bH+c+b6, y0+L0/2-dw1/2-dw2/2, x0+A+bH+2*c+b6, y0+L0/2-dw1/2-dw2/2);
 LineSeg[38]:=AddLine(LSS, x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2, x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2+dw3);
 LineSeg[39]:=AddLine(LSS, x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2+dw3,  x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2+dw3);

 LineSeg[40]:=AddLine(LSS, x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2+dw3, x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2);
 LineSeg[41]:=AddLine(LSS, x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2, x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2);
 LineSeg[42]:=AddLineAxial(LSS, x0+A+bH+2*c+b6, y0+A+(dw2-dw3)/2+dw3, x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2+dw3));
 LineSeg[43]:=AddLine(LSS, x0+A+bH+2*c+b6,y0+L0-(A+(dw2-dw3)/2+dw3),x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2));
 LineSeg[44]:=AddLine(LSS, x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2), x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2));
 LineSeg[45]:=AddLine(LSS, x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2), x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2+dw3));
 LineSeg[46]:=AddLine(LSS, x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2+dw3), x0+A+bH+2*c+b6, y0+L0-(A+(dw2-dw3)/2+dw3));
 LineSeg[47]:=AddLineAxial(LSS, x0+A+bH+2*c+b6+ba, y0+L0-(A+(dw2-dw3)/2+dw3), x0+A+bH+2*c+b6+ba, y0+A+(dw2-dw3)/2+dw3);
 LineSeg[48]:=AddLine(LSS, x0+A+bH+2*c+b6+ba, y0+L0/2-dw1/2-dw2/2, x0+A+bH+3*c+b6+ba, y0+L0/2-dw1/2-dw2/2);
 LineSeg[49]:=AddLine(LSS, x0+A+bH+2*c+b6+ba, y0+L0/2+dw1/2+dw2/2, x0+A+bH+3*c+b6+ba, y0+L0/2+dw1/2+dw2/2);

 LineSeg[50]:=AddLine(LSS, x0+A+bH+3*c+b6+ba, y0+((L0-dw4)/2), x0+A+bH+3*c+b6+ba,(y0+((L0-dw4)/2))+dw4);
 LineSeg[51]:= AddLine(LSS, x0+A+bH+3*c+b6+ba, (y0+((L0-dw4)/2))+dw4, x0+A+2*bH+3*c+b6+ba,(y0+((L0-dw4)/2))+dw4);
 LineSeg[52]:=AddLine(LSS, x0+A+bH+3*c+b6+ba, y0+((L0-dw4)/2), x0+A+2*bH+3*c+b6+ba,y0+((L0-dw4)/2));
 LineSeg[53]:=AddLine(LSS, x0+A+2*bH+3*c+b6+ba, y0+((L0-dw4)/2), x0+A+2*bH+3*c+b6+ba,(y0+((L0-dw4)/2))+dw4);
 LineSeg[54]:=AddLine(LSS, x0+A+bH+3*c+b6+ba,  y0+L0/2-dw1/2-dw2/2, x0+2*A+2*bH+3*c+b6+ba, y0+L0/2-dw1/2-dw2/2);
 LineSeg[55]:=AddLine(LSS, x0+A+bH+3*c+b6+ba,  y0+L0/2+dw1/2+dw2/2, x0+2*A+2*bH+3*c+b6+ba, y0+L0/2+dw1/2+dw2/2);
 LineSeg[56]:=AddLine(LSS, x0-20,  (y0+((L0-dw4)/2))+dw4/2,  x0+A+bH+c,  (y0+((L0-dw4)/2))+dw4/2);
 LineSeg[57]:=AddLine(LSS, x0+A+bH+c+b6,  (y0+((L0-dw4)/2))+dw4/2, x0+A+bH+3*c+b6+ba,  (y0+((L0-dw4)/2))+dw4/2);
 LineSeg[58]:=AddLine(LSS, x0+A+2*bH+3*c+b6+ba,  (y0+((L0-dw4)/2))+dw4/2, x0+B+20,  (y0+((L0-dw4)/2))+dw4/2);
 LineSeg[59]:=AddLine(LSS, x0+A,  y0+L0/2+25, x0+A+bH,  y0+L0/2+25);
 LineSeg[60]:=AddLine(LSS, x0+A,  y0+L0/2-25, x0+A+bH,  y0+L0/2-25);
 LineSeg[61]:=AddLineAxial(LSS,  x0+B+G+L0/2,  y0, x0+B+G+L0/2,  y0+L0+30);
 LineSeg[62]:=AddLineAxial(LSS, x0+B+G+L0/2,  y0, x0+B+G+L0/2,  y0-30);
 LineSeg[63]:=AddLineAxial(LSS, x0+B+G-30,  y0+L0/2,x0+B+G+L0+30,  y0+L0/2);
 LineSeg[64]:=AddLineAxial(LSS, x0+A+bH+c,  y0+L0/2+dw1/2, x0+A+bH+c+b6,  y0+L0/2+dw1/2);
 LineSeg[65]:=AddLine(LSS, x0+A+bH+c,  y0+L0/2+dw1/2, x0+A+bH+c+b6,  y0+L0/2+dw1/2);

 LineSeg[79]:=AddLine(LSS, x0+B+h,  y0, x0+B+G+L0/2,  y0);
 LineSeg[80]:=AddLine(LSS, x0+B+h,  y0+L0, x0+B+G+L0/2,  y0+L0);
 LineSeg[81]:=AddLine(LSS, x0+B+h,  y0, x0+B+h,  y0+L0);

 ArcSeg[66]:= AddArc(Arcs, x0+B+G+L0/2, y0+L0/2, L0/2);
 ArcSeg[67]:=AddArc(Arcs, x0+B+G+L0/2, y0+L0/2, dw4/2);
 ArcSeg[68]:= AddArcAxial(Arcs, x0+B+G+L0/2, y0+L0/2, L0/2-(A+(dw2-dw3)/2));
 ArcSeg[69]:=AddArcAxial(Arcs, x0+B+G+L0/2, y0+L0/2,dw1/2+dw2/2);
 ArcSeg[70]:=AddArcAxial(Arcs, x0+B+G+L0/2, y0+L0/2, dw1/2);
 ArcSeg[71]:=AddArc(Arcs, x0+B+G+L0/2, y0+(L0/2-(dw1/2+dw2/2)), dw2/2);
 ArcSeg[72]:=AddArc(Arcs, x0+B+G+L0/2, y0+(L0/2-(dw1/2+dw2/2)), dw3/2);

 ArcSeg[73]:=AddArc(Arcs, x0+B+G+L0/2, y0+(L0/2+(dw1/2+dw2/2)),dw2/2);
 ArcSeg[74]:=AddArc(Arcs,x0+B+G+L0/2, y0+(L0/2+(dw1/2+dw2/2)), dw3/2);
 ArcSeg[75]:=AddArc(Arcs, x0+B+G+(L0/2-(dw1/2+dw2/2)), y0+L0/2, dw2/2);

 ArcSeg[76]:=AddArc(Arcs,x0+B+G+(L0/2-(dw1/2+dw2/2)), y0+L0/2, dw3/2);
 ArcSeg[77]:=AddArc(Arcs, x0+B+G+(L0/2+(dw1/2+dw2/2)), y0+L0/2, dw2/2);
 ArcSeg[78]:=AddArc(Arcs, x0+B+G+(L0/2+(dw1/2+dw2/2)), y0+L0/2, dw3/2);


 end;
end.
