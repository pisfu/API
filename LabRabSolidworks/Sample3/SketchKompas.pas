unit SketchKompas;

interface
uses  Windows, ComObj, Kompas6constants_TLB,  Forms, Kompas6API2D5COM_TLB, Kompas6API5_TLB,KompasAPI7_TLB;



Function OpenKP(Path: string;KP: iApplication; KD: iKompasDocument; L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;
// function GetLastErrorString(Error: byte): PChar;
implementation

function Drawing(Path: string; KP: iApplication;ls1:ILineSegments; aseg:IArcs;KD: iKompasDocument;  L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;forward;
//function CloseSW(Path: string; KP: IApplication; KD: IKompasDocument; Toggle, InfMode: WordBool): byte; forward;
function AddLine(DrawContainer: ILineSegments; X1,Y1,X2,Y2: extended): ILineSegment;forward;
function AddLineAxial(DrawContainer: ILineSegments; X1,Y1,X2,Y2: extended): ILineSegment;forward;
function AddCircle(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;forward;
function AddCircleL(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;forward;
function AddCircleR(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;forward;
function AddCircleAxial(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;forward;

Function OpenKP(Path: string;KP: IApplication; KD: iKompasDocument; L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;
var
command: word;

    iDoc      : ksDocument2D;
    iPhan     : ksPhantom;
    it1       : ksType1;
    iReqInfo  : ksRequestInfo;
    fAngleEnabled, fEndCycle : Boolean;
    x, y, ang : Double;
    resCode   : Integer;
    Kompas: KompasObject;
 iDocument2D: ksDocument2D;
 Ls1:LineSegments;
 Ls2:LineSegments;
 Ls3:LineSegments;
 Ls4:LineSegments;
 Ls5:LineSegments;
 Ls6:LineSegments;
 aseg:Arcs;
    begin


     KP:=Co_Application.Create;
    KP.Visible:=True;
    KD:=KP.Documents.Add(ksDocumentDrawing,True);
    KD:=KP.ActiveDocument;
    KD.LayoutSheets.Item[0].Format.Format:=ksFormatUser;
    KD.LayoutSheets.Item[0].Format.FormatWidth:=841;
    KD.LayoutSheets.Item[0].Format.FormatHeight:=594;
    KD.LayoutSheets.Item[0].Update;
    ls1:=((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as IDrawingContainer).LineSegments;
    aseg:=((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as IDrawingContainer).Arcs;



 Drawing(Path,KP,Ls1,aseg, KD,   L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q, Toggle, InfMode);
    end;



function Drawing(Path: string; KP: iApplication; ls1:ILineSegments; aseg:IArcs; KD: iKompasDocument;  L,s,a,c,bt, bh,b6,dw1,dw2,dw3,dw4,x1,y1,SH,W,Point,B,h,q: Double; Toggle, InfMode: WordBool): byte;
var
  ls: ksDocument2D;
  ls2:IDispatch;

begin

 SH:=594;
 W:=841;
 L:=(((dw1+dw2)/4)*sqrt(3)+dw2/2)*2;

 // чертим первый вид

 AddLine(Ls1,W/4-a-bh-c-b6-c/2, SH/2-L/2-s,  W/4-c/2+c+bh+c+bt+a, SH/2-L/2-s) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2, SH/2-L/2-s, W/4-a-bh-c-b6-c/2,SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a) ) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a),  W/4-a-bh-c-b6-c/2+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2-a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2+a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2-a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2+a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a, SH/2-L/2-s, W/4-c/2+2*c+bh+bt+a, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a-a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a-a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a+a/2, SH/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a),  W/4-c/2+2*c+bh+bt+a+a/2, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a-a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a),  W/4-c/2+2*c+bh+bt+a-a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a+a/2-a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a),  W/4-c/2+2*c+bh+bt+a+a/2+a/5, SH/2-1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2, SH/2+1/20*(W/4-c/2+2*c+bh+bt+a), W/4-a-bh-c-b6-c/2, SH/2+L/2+s) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2-a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2+a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2-a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-a-bh-c-b6-c/2+a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2, SH/2+L/2+s, W/4-c/2+2*c+bh+bt+a, SH/2+L/2+s) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a, SH/2+L/2+s, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a-a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a-a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a+a/2, SH/2+1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a+a/2, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a-a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a-a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-c/2+2*c+bh+bt+a+a/2-a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), W/4-c/2+2*c+bh+bt+a+a/2+a/5, SH/2+1/30*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a)) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2-1/20*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), SH/2, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-L/2, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+L/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-L/2, W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-L/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-L/2, W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-L/2+L) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+L/2,W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2+L/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-dw1/2, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-dw1/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2+dw1/2, W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+dw1/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a, SH/2-dw4/2-dw3, W/4-a-bh-c-b6-c/2+a, SH/2+dw4/2+dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh, SH/2-dw4/2-dw3, W/4-a-bh-c-b6-c/2+a+bh, SH/2+dw4/2+dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a, SH/2-dw4/2-dw3,  W/4-a-bh-c-b6-c/2+a+bh, SH/2-dw4/2-dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a, SH/2+dw4/2+dw3,  W/4-a-bh-c-b6-c/2+a+bh, SH/2+dw4/2+dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2,  W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a+1/10*(W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+a), SH/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2-dw1/2-dw2/2-dw3/2, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2+dw1/2+dw2/2+dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2-dw1/2-dw2/2-dw3/2, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2+dw1/2+dw2/2+dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2-dw1/2-dw2/2-dw3/2, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2-dw1/2-dw2/2-dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2+dw1/2+dw2/2+dw3/2,  W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2+dw1/2+dw2/2+dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2-dw4/2-dw3, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2+dw4/2+dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2-dw4/2-dw3,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2+dw4/2+dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2-dw4/2-dw3, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2-dw4/2-dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2+dw4/2+dw3, W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2+dw4/2+dw3) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh, SH/2-dw4/2-dw3/2,  W/4-a-bh-c-b6-c/2+a+bh+c, SH/2-dw4/2-dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6, SH/2-dw4/2-dw3/2,  W/4-a-bh-c-b6-c/2+a+bh+c+b6+c, SH/2-dw4/2-dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh, SH/2-dw4/2-dw3/2,  W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c, SH/2-dw4/2-dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt, SH/2-dw4/2-dw3/2,  W/4-a-bh-c-b6-c/2+a+bh+c+b6+c+bh+c+bt+c, SH/2-dw4/2-dw3/2) ;
 AddLine(Ls1,W/4-a-bh-c-b6-c/2+a+bh, SH/2+dw4/2+dw3/2,  W/4-a-bh-c-b6-c/2+a+bh+c, SH/2+dw4/2+dw3/2) ;
 AddLine(Ls1,W/4-c/2, SH/2+dw4/2+dw3/2, W/4-c/2+c, SH/2+dw4/2+dw3/2) ;
 AddLine(Ls1,W/4-c/2+c+bh, SH/2+dw4/2+dw3/2,  W/4-c/2+c+bh+c, SH/2+dw4/2+dw3/2) ;
 AddLine(Ls1,W/4-c/2+c+bh+c+bt, SH/2+dw4/2+dw3/2,  W/4-c/2+c+bh+c+bt+c, SH/2+dw4/2+dw3/2) ;
 AddLine(Ls1,W/4-c/2+c+bh+c, SH/2-dw4/2, W/4-c/2+c+bh+c+bt, SH/2-dw4/2) ;
 AddLine(Ls1,W/4-c/2+c+bh+c, SH/2+dw4/2,  W/4-c/2+c+bh+c+bt, SH/2+dw4/2) ;
 AddLine(Ls1,W/4-bh-c-b6-c/2, SH/2-(dw4/2-dw1/2),W/4-c-b6-c/2, SH/2-(dw4/2-dw1/2)) ;
 AddLine(Ls1,W/4-bh-c-b6-c/2, SH/2+(dw4/2-dw1/2), W/4-a-bh-c-b6-c/2+a+bh, SH/2+(dw4/2-dw1/2)) ;
 AddLine(Ls1,W/4-c/2+c, SH/2-(dw4/2-dw1/2), W/4-c/2+c+bh, SH/2-(dw4/2-dw1/2)) ;
 AddLine(Ls1,W/4-c/2+c, SH/2+(dw4/2-dw1/2),  W/4-c/2+c+bh, SH/2+(dw4/2-dw1/2)) ;
 AddLine(Ls1,W/4-c/2+c+bh+c, SH/2-(dw4/2-dw1/2),  W/4-c/2+c+bh+c+bt, SH/2-(dw4/2-dw1/2)) ;
 AddLine(Ls1,W/4-c/2+c+bh+c, SH/2+(dw4/2-dw1/2), W/4-c/2+c+bh+c+bt, SH/2+(dw4/2-dw1/2)) ;

  //Чертим второй вид

 AddLineAxial(Ls1,W/2, SH/2,W/2+h+dw2+dw2+dw1+q, SH/2) ;
 AddLineAxial(Ls1,W/2+dw2+dw1/2+h, SH/2-L/2-2*s, W/2+dw2+dw1/2+h, SH/2+L/2+2*s) ;
 AddCircle(aseg, W/2+dw2+dw1/2+h, SH/2, dw1/2);
 AddCircleAxial(aseg,W/2+dw2+dw1/2+h, SH/2, dw4/2);
 AddCircleAxial(aseg,W/2+dw2+dw1/2+h, SH/2, (dw4+dw3/2)/2);
 AddCircle(aseg,W/2+dw2+dw1/2+h, SH/2, (dw4+dw3)/2);
 AddCircleR(aseg,W/2+dw2+dw1/2+h, SH/2, dw1/2+dw2+q);
 AddLine(Ls1,W/2, SH/2-L/2-s, W/2+dw2+dw1/2+h, SH/2-L/2-s) ;
 AddLine(Ls1,W/2, SH/2+L/2+s, W/2+dw2+dw1/2+h, SH/2+L/2+s) ;
 AddLine(Ls1,W/2, SH/2-L/2-s, W/2, SH/2+L/2+s) ;
 AddCircleAxial(aseg,W/2+h+dw2+dw1+dw2/2, SH/2, dw3/2);
 AddCircle(aseg,W/2+h+dw2+dw1+dw2/2, SH/2, dw2/2);
 AddCircleAxial(aseg,W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2+((dw1+dw2)/4)*sqrt(3), dw3/2);
 AddCircle(aseg,W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2+((dw1+dw2)/4)*sqrt(3),  dw2/2);
 AddCircleAxial(aseg,W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2-((dw1+dw2)/4)*sqrt(3),  dw3/2);
 AddCircleAxial(aseg,W/2+dw2+dw1/2+h-((dw1+dw2)/4), SH/2-((dw1+dw2)/4)*sqrt(3),  dw2/2);
 AddLineAxial(Ls1,W/2+dw2+dw1/2+h, SH/2,  W/2+dw2+dw1/2+h-((dw1+dw2)/2), SH/2+((dw1+dw2)/2)*sqrt(3)) ;
 AddLineAxial(Ls1,W/2+dw2+dw1/2+h, SH/2,  W/2+dw2+dw1/2+h-((dw1+dw2)/2), SH/2-((dw1+dw2)/2)*sqrt(3)) ;
 AddCircleL(aseg,W/2+dw2+dw1/2+h, SH/2, dw1/2+dw2);

end;

function AddLine(DrawContainer: ILineSegments; X1,Y1,X2,Y2: extended): ILineSegment;
var LS1: ILineSegment;
begin
 LS1:=DrawContainer.Add;
 LS1.X1:=X1;
 LS1.Y1:=Y1;
 LS1.X2:=X2;
 LS1.Y2:=Y2;
 LS1.Style:=ksCSThin;
 LS1.Update;
 Result:=LS1;
end;

function AddLineAxial(DrawContainer: ILineSegments; X1,Y1,X2,Y2: extended): ILineSegment;
var LS2: ILineSegment;
begin
 LS2:=DrawContainer.Add;
 LS2.X1:=X1;
 LS2.Y1:=Y1;
 LS2.X2:=X2;
 LS2.Y2:=Y2;
 LS2.Style:=ksCSAxial;
 LS2.Update;
 Result:=LS2;
end;

function AddCircle(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS3: IArc;
begin
 LS3:=DrawContainer.Add;
 LS3.Xc:=Xc;
 LS3.Yc:=Yc;
 LS3.Radius:=R;
 LS3.Angle1:=0;
 LS3.Angle1:=360;
 LS3.Style:=ksCSThin;
 LS3.Update;
 Result:=LS3;
end;
function AddCircleL(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS4: IArc;
begin
 LS4:=DrawContainer.Add;
 LS4.Xc:=Xc;
 LS4.Yc:=Yc;
 LS4.Radius:=R;
 LS4.Angle1:=240;
 LS4.Angle2:=180;
 LS4.Style:=ksCSAxial;
 LS4.Update;
 Result:=LS4;
end;

function AddCircleR(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS5: IArc;
begin
 LS5:=DrawContainer.Add;
 LS5.Xc:=Xc;
 LS5.Yc:=Yc;
 LS5.Radius:=R;
 LS5.Angle1:=90;
 LS5.Angle2:=270;
 LS5.Style:=ksCSThin;
 LS5.Update;
 Result:=LS5;
end;

function AddCircleAxial(DrawContainer: IArcs; Xc,Yc,R: extended): IArc;
var LS6: IArc;
begin
 LS6:=DrawContainer.Add;
 LS6.Xc:=Xc;
 LS6.Yc:=Yc;
 LS6.Radius:=R;
 LS6.Angle1:=0;
 LS6.Angle1:=360;
 LS6.Style:=ksCSAxial;
 LS6.Update;
 Result:=LS6;
end;
end.
