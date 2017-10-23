unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Kompas6Constants_TLB, KOMPASAPI7_TLB, Math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    //procedure DrawShkiv(LSS: ILineSegments; Arcs:IArcs; TopLeft:TPoint);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 // TKompasVersion = record
   //   Major, Minor, Release, Build: Integer;

var
  Form1: TForm1;



implementation

{$R *.dfm}
var
 Dimshk, Shirrem, posaddim, shirobod, posadshir, radiu, stupdim, diskshir, diskdlin, obodS: Double;

 KA:IApplication;
  KD:IKompasDocument;
  LSS: ILineSegments;
  LineSeg:ILineSegment;
  Arcs:IArcs;
  arc:IArc;

function AddArcDotted(Arcs: IArcs; X1,Y1,X2,Y2,X3,Y3: Extended): IArc;
var Arc: IArc;
begin
  Arc := Arcs.Add;
  Arc.X1 := X1;
  Arc.Y1 := Y1;
  Arc.X2 := X3;
  Arc.Y2 := Y3;
  Arc.X3 := X2;
  Arc.Y3 := Y2;
  //Arc.Radius := R;
  Arc.Angle1 := 360;
  Arc.Angle2 := 0;
  Arc.Style := ksCSNormal;
  Arc.Update;
  Result := Arc;
end;


function AddLine(LSS: ILineSegments; X1,Y1,X2,Y2: Extended; style:Integer): ILineSegment;
var LS: ILineSegment;
begin
  LS := LSS.Add;
 LS.X1 := X1;
 LS.Y1 := Y1;
 LS.X2 := X2;
 LS.Y2 := Y2;
 LS.Style := style;
 LS.Update;
 Result := LS;
 Ls.Style
end;

procedure TForm1.Button1Click(Sender: TObject);
  var
  wd,hd:double;
begin
  Dimshk:= strtofloat(ComboBox1.Text)/2;
  Shirrem:= strtofloat(ComboBox2.Text);
  posaddim:= strtofloat(LabeledEdit1.Text)/2;

  shirobod:=Shirrem*1.3;
  //posaddim:=Dimshk*0.2;
  posadshir:=posaddim*1.2;
  stupdim:=Dimshk*0.4;
  diskshir:=posadshir*0.8;
  diskdlin:=Dimshk*0.9;
  obodS:=Dimshk*0.1;



  radiu:=StrToFloat(LabeledEdit4.Text);



    KA:=Co_Application.Create;
    KA.Visible:=true;
    KD := KA.Documents.Add(ksDocumentDrawing, true);
    KD.LayoutSheets.Item[0].Format.Format := ksFormatA4;
    KD.LayoutSheets.Item[0].Update;

    LSS := ((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as
        IDrawingContainer).LineSegments;
    Arcs := ((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as
        IDrawingContainer).Arcs;

  wd:=(KD.LayoutSheets.Item[0].Format.FormatWidth)/2;
  hd:=(KD.LayoutSheets.Item[0].Format.FormatHeight)/2;

    AddLine(lss,(-(posadshir/2)+wd),hd,((posadshir/2)+wd), hd,ksCSAxial);

    AddLine(lss,(-(posadshir/2)+wd), (posaddim)+hd, ((posadshir/2)+wd), (posaddim)+hd,ksCSNormal);
    AddLine(lss,(posadshir/2)+wd, posaddim+hd,(posadshir/2)+wd ,(stupdim)+hd,ksCSNormal);
    AddLine(lss,(posadshir/2)+wd, (stupdim)+hd, (diskshir/2)+wd ,(stupdim)+hd,ksCSNormal);
    AddLine(lss,(diskshir/2)+wd ,(stupdim)+hd, (diskshir/2)+wd ,(diskdlin)+hd,ksCSNormal);
    AddLine(lss,(diskshir/2)+wd ,(diskdlin)+hd, (Abs(-shirobod/2))+wd ,(diskdlin)+hd,ksCSNormal);
    AddLine(lss,(shirobod/2)+wd ,(diskdlin)+hd, (shirobod/2)+wd ,(Dimshk)+hd,ksCSNormal);

     AddArcDotted(arcs,-(shirobod/2)+wd, (Dimshk)+hd,(shirobod/2)+wd, (Dimshk)+hd, wd,(Dimshk+0.1)+hd);

     //AddLine(lss,(shirobod/2)+wd, (Dimshk)+hd, -(shirobod/2)+wd, (Dimshk)+hd,ksCSNormal);

    AddLine(lss,-(shirobod/2)+wd ,(Dimshk)+hd, -(shirobod/2)+wd ,(diskdlin)+hd,ksCSNormal);
    AddLine(lss,-(shirobod/2)+wd ,(diskdlin)+hd, -(diskshir/2)+wd ,(diskdlin)+hd,ksCSNormal);
    AddLine(lss,-(diskshir/2)+wd ,(diskdlin)+hd, -(diskshir/2)+wd ,(stupdim)+hd,ksCSNormal);
    AddLine(lss,-(diskshir/2)+wd ,(stupdim)+hd, -(posadshir/2)+wd, (stupdim)+hd,ksCSNormal);
    AddLine(lss,-(posadshir/2)+wd, posaddim+hd, -(posadshir/2)+wd ,(stupdim)+hd,ksCSNormal);


    AddArcDotted(arcs,100,110,150,110,125,120);

  {iskmgr:= Idocsol.SketchManager;

  scmas[0]:=iskmgr.CreateCenterLine(0,0,0,(Dimshk+2)/1000,0,0);
   scmas[1]:=iskmgr.CreateLine(-(posadshir/2)/1000, posaddim/1000, 0, (posadshir/2)/1000, posaddim/1000, 0);
   scmas[1].Select(false);
   Idocsol.SketchAddConstraints('sgHORIZONTAL');

   scmas[2]:=iskmgr.CreateLine((posadshir/2)/1000, posaddim/1000,0,(posadshir/2)/1000 ,(stupdim)/1000 ,0);
   scmas[2].Select(false);
   Idocsol.SketchAddConstraints('sgVERTICAL');

   scmas[3]:=iskmgr.CreateLine((posadshir/2)/1000, (stupdim)/1000, 0, (diskshir/2)/1000 ,(stupdim)/1000, 0);
   scmas[3].Select(false);
   Idocsol.SketchAddConstraints('sgHORIZONTAL');

   scmas[4]:=iskmgr.CreateLine((diskshir/2)/1000 ,(stupdim)/1000, 0, (diskshir/2)/1000 ,(diskdlin)/1000, 0);
   scmas[4].Select(false);
   Idocsol.SketchAddConstraints('sgVERTICAL');

   scmas[5]:=iskmgr.CreateLine((diskshir/2)/1000 ,(diskdlin)/1000, 0, (Abs(-shirobod/2))/1000 ,(diskdlin)/1000, 0);
   scmas[5].Select(false);
   Idocsol.SketchAddConstraints('sgHORIZONTAL');

   scmas[6]:=iskmgr.CreateLine((shirobod/2)/1000 ,(diskdlin)/1000, 0, (shirobod/2)/1000 ,(Dimshk)/1000, 0);
   scmas[6].Select(false);
   Idocsol.SketchAddConstraints('sgVERTICAL');

   scmas[7]:=iskmgr.Create3PointArc((shirobod/2)/1000, (Dimshk)/1000, 0, -(shirobod/2)/1000, (Dimshk)/1000, 0, 0, (Dimshk+0.3)/1000,0);

   scmas[8]:=iskmgr.CreateLine(-(shirobod/2)/1000 ,(Dimshk)/1000, 0, -(shirobod/2)/1000 ,(diskdlin)/1000, 0);
   scmas[8].Select(false);
   Idocsol.SketchAddConstraints('sgVERTICAL');

   scmas[9]:=iskmgr.CreateLine(-(shirobod/2)/1000 ,(diskdlin)/1000, 0, -(diskshir/2)/1000 ,(diskdlin)/1000, 0);
   scmas[9].Select(false);
   Idocsol.SketchAddConstraints('sgHORIZONTAL');

   scmas[10]:=iskmgr.CreateLine(-(diskshir/2)/1000 ,(diskdlin)/1000, 0, -(diskshir/2)/1000 ,(stupdim)/1000, 0);
   scmas[10].Select(false);
   Idocsol.SketchAddConstraints('sgVERTICAL');

   scmas[11]:=iskmgr.CreateLine(-(diskshir/2)/1000 ,(stupdim)/1000, 0, -(posadshir/2)/1000, (stupdim)/1000, 0);
   scmas[11].Select(false);
   Idocsol.SketchAddConstraints('sgHORIZONTAL');

   scmas[12]:=iskmgr.CreateLine(-(posadshir/2)/1000, posaddim/1000, 0, -(posadshir/2)/1000 ,(stupdim)/1000 ,0);
   scmas[12].Select(false);
   Idocsol.SketchAddConstraints('sgVERTICAL');

   //scmas[13]:=iskmgr.CreateLine(-(posadshir/2)/1000, posaddim/1000, 0, 0, posaddim/1000, 0);


 //  ((scmas[1] as ISketchLine).GetStartPoint2 as ISketchPoint).Select(false);
 //  ((scmas[12] as ISketchLine).GetEndPoint2 as ISketchPoint).Select(true);
 //  Idocsol.SketchAddConstraints('sgMergePoints');

   ((scmas[1] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
    //Idocsol.SketchAddConstraints('sgFIXED');
   ((scmas[2] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[2] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[3] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[3] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[4] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[4] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[5] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[5] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[6] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[6] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[7] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[7] as ISketchArc).GetEndPoint2 as ISketchPoint).Select(false);
   ((scmas[8] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[8] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[9] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[9] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[10] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[10] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[11] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[11] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[12] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[12] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[1] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   Idocsol.SketchAddConstraints('sgMERGEPOINTS');


   Idocsol.FeatureRevolve2(pi*2,false,0,0,0);
  //ShowMessage(FloatToStr(posadshir/2)+' '+FloatToStr(-posadshir/2));
   }

end;

end.
