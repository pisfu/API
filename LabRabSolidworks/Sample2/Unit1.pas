unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Variants,
  Classes, Graphics, SldWorks_TLB, SwConst_TLB,
  Controls, Forms, Dialogs, StdCtrls, TFlatBeltUnit, Vcl.ExtCtrls, CommonProc;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    procedure ComboBox1Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    b:TOutput;
    FlatBelt: TFlatBelt;
    sld_app:ISldWorks;
    sld_doc:IModelDoc2;
    iskmgr:ISketchManager;
    iplasol, iplasol2:IRefPlane;
    scmas:array[0..20] of SketchSegment;
    spmas:array[0..20] of SketchPoint;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
pulley_diam, h, belt_width, bore_diam, shirobod, posadshir, radiu, stupdim, diskshir, diskdlin, obodS, pazvisot, pazshir: Double;
D, dst:integer;
begin

  pulley_diam:= b.d2/2;         // диаметр шкива
  belt_width:= b.bs;          // ширина шкива
  bore_diam:= b.d1/2;       // посадочный диаметр


  case Trunc(b.d2) of
    40..112: h:=0.3;
    125..140: h:=0.4;
    160..180: h:=0.5;
    200..224: h:=0.6;
    250..280: h:=0.8;
    315..355: h:=1;
    else
    h:=1;
  end;

  case Trunc(b.d1) of
    30..37:
      begin
        pazvisot:=(3.3);
        pazshir:=10;
      end;

    38..44:
      begin
        pazvisot:=(3.3);
        pazshir:=12;
      end;

    45..50:
      begin
        pazvisot:=(3.8);
        pazshir:=14;
      end;

    51..58:
      begin
        pazvisot:=(4.3);
        pazshir:=16;
      end;

    59..65:
      begin
        pazvisot:=(4.4);
        pazshir:=18;
      end;

    66..75:
      begin
        pazvisot:=(4.9);
        pazshir:=20;
      end;

    76..140:
      begin
        pazvisot:=(5.4);
        pazshir:=22;
      end
      else
        begin
          pazvisot:=(5.4);
          pazshir:=22;
        end;
  end;

      shirobod:=(belt_width*1.1);  //ширина обода

      posadshir:=(bore_diam*1.2);   // ширина ступицы

      stupdim:=(bore_diam*1.55);     // диаметр ступицы

      obodS:=(0.02*(pulley_diam+2*Shirobod));       // Толщина обода
      diskshir:=Obods*1.2;        // Ширина диска
      diskdlin:=(pulley_diam-obods);     // Длинна диска

  sld_app:=CoSldWorks_.Create;
  sld_app.Visible:=true;
  sld_doc:=sld_app.NewPart as IModelDoc2;
  iplasol:=FindPlane(sld_doc,1);

  (iplasol as IFeature).Select(false);
  sld_doc.InsertSketch;

  iskmgr:= sld_doc.SketchManager;

  sld_doc.SetUserPreferenceToggle(swInputDimValOnCreate,true);

  sld_doc.SetInferenceMode(false);

  case RadioGroup1.ItemIndex of
    0:
      begin  {обычный}

        scmas[0]:=iskmgr.CreateCenterLine(0,0,0,(pulley_diam+2)/1000,0,0);

        scmas[1]:=iskmgr.CreateLine(-(posadshir/2)/1000, bore_diam/1000, 0, (posadshir/2)/1000, bore_diam/1000, 0);
        scmas[1].Select(false);
        sld_doc.SketchAddConstraints('sgHORIZONTAL');

        scmas[2]:=iskmgr.CreateLine((posadshir/2)/1000, bore_diam/1000,0,(posadshir/2)/1000 ,(stupdim)/1000 ,0);
        scmas[2].Select(false);
        sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[3]:=iskmgr.CreateLine((posadshir/2)/1000, (stupdim)/1000, 0, (diskshir/2)/1000 ,(stupdim)/1000, 0);
   scmas[3].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');

   scmas[4]:=iskmgr.CreateLine((diskshir/2)/1000 ,(stupdim)/1000, 0, (diskshir/2)/1000 ,(diskdlin)/1000, 0);
   scmas[4].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[5]:=iskmgr.CreateLine((diskshir/2)/1000 ,(diskdlin)/1000, 0, (Abs(-shirobod/2))/1000 ,(diskdlin)/1000, 0);
   scmas[5].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');

   scmas[6]:=iskmgr.CreateLine((shirobod/2)/1000 ,(diskdlin)/1000, 0, (shirobod/2)/1000 ,(pulley_diam)/1000, 0);
   scmas[6].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[7]:=iskmgr.Create3PointArc((shirobod/2)/1000, (pulley_diam)/1000, 0, -(shirobod/2)/1000, (pulley_diam)/1000, 0, 0, (pulley_diam+h)/1000,0);

   scmas[8]:=iskmgr.CreateLine(-(shirobod/2)/1000 ,(pulley_diam)/1000, 0, -(shirobod/2)/1000 ,(diskdlin)/1000, 0);
   scmas[8].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[9]:=iskmgr.CreateLine(-(shirobod/2)/1000 ,(diskdlin)/1000, 0, -(diskshir/2)/1000 ,(diskdlin)/1000, 0);
   scmas[9].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');

   scmas[10]:=iskmgr.CreateLine(-(diskshir/2)/1000 ,(diskdlin)/1000, 0, -(diskshir/2)/1000 ,(stupdim)/1000, 0);
   scmas[10].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[11]:=iskmgr.CreateLine(-(diskshir/2)/1000 ,(stupdim)/1000, 0, -(posadshir/2)/1000, (stupdim)/1000, 0);
   scmas[11].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');

   scmas[12]:=iskmgr.CreateLine(-(posadshir/2)/1000, bore_diam/1000, 0, -(posadshir/2)/1000 ,(stupdim)/1000 ,0);
   scmas[12].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
    ((scmas[1] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
    ((scmas[2] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[2] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[3] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[3] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[4] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[4] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[5] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[5] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[6] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[6] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[7] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[7] as ISketchArc).GetEndPoint2 as ISketchPoint).Select(false);
   ((scmas[8] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[8] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[9] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[9] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[10] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[10] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[11] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[11] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[12] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[12] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[1] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');
   sld_doc.ClearSelection2(true);

    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[2].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-50)/1000 ,0);
    sld_doc.ClearSelection2(true);

    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[0].Select(true);
    sld_doc.SketchAddConstraints('sgCOINCIDENT');
    sld_doc.ClearSelection2(true);

    scmas[6].Select(false);
    scmas[8].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');
    sld_doc.ClearSelection2(true);

    ((scmas[7] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(False);
    scmas[0].Select(True);
    sld_doc.IAddDimension2((posadshir)/1000 ,(pulley_diam-20)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[0].Select(false);
    scmas[1].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[5].Select(false);
    scmas[0].Select(true);
    sld_doc.IAddDimension2((posadshir+20)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);


    scmas[0].Select(false);
    scmas[1].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

     scmas[0].Select(false);
    scmas[11].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[7].Select(true);
    sld_doc.IAddDimension2((0) ,(pulley_diam-10)/1000 ,0);
    sld_doc.ClearSelection2(true);

     scmas[2].Select(false);
    scmas[12].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim+50)/1000 ,0);
    sld_doc.ClearSelection2(true);

     scmas[6].Select(false);
    scmas[8].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(pulley_diam+50)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[4].Select(false);
    scmas[10].Select(true);
    sld_doc.AddDimension((-posadshir*2)/1000 ,(diskdlin+20)/1000 ,0);

    scmas[3].Select(false);
    scmas[11].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    scmas[3].Select(false);
    scmas[11].Select(true);
    sld_doc.SketchAddConstraints('sgCOLINEAR');

    scmas[5].Select(false);
    scmas[9].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    scmas[5].Select(false);
    scmas[9].Select(true);
    sld_doc.SketchAddConstraints('sgCOLINEAR');
   sld_doc.FeatureRevolve2(pi*2,false,0,0,0);
     iplasol2:=findplane(sld_doc,2);
   (iplasol2 as IFeature).Select(false);
    sld_doc.InsertSketch;

    scmas[13]:=iskmgr.CreateLine((-pazshir/2)/1000,(bore_diam+pazvisot)/1000,0,(-pazshir/2)/1000,0,0);
    scmas[14]:=iskmgr.CreateLine((-pazshir/2)/1000,0,0,(pazshir/2)/1000,0,0);
    scmas[15]:=iskmgr.CreateLine((pazshir/2)/1000,0, 0 ,(pazshir/2)/1000,(bore_diam+pazvisot)/1000, 0);
    scmas[16]:=iskmgr.CreateLine((pazshir/2)/1000,(bore_diam+pazvisot)/1000,0,(-pazshir/2)/1000,(bore_diam+pazvisot)/1000,0);
    scmas[17]:=iskmgr.CreateCenterLine(0,0,0,0,(pulley_diam+2)/1000,0);

    scmas[13].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
   scmas[14].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');
   scmas[15].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
   scmas[16].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');


    scmas[17].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

    scmas[13].Select(false);
    scmas[15].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    scmas[14].Select(false);
    scmas[16].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');


    sld_doc.ClearSelection2(true);
    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[14].Select(true);
    sld_doc.SketchAddConstraints('sgATMIDDLE');
    sld_doc.ClearSelection2(true);

    ((scmas[13] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[14] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[14] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[15] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[15] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[16] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[16] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[13] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');


    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[17].Select(true);
    sld_doc.SketchAddConstraints('sgCOINCIDENT');
    sld_doc.ClearSelection2(true);

    sld_doc.ClearSelection2(true);
    scmas[13].Select(False);
    scmas[15].Select(true);
    sld_doc.AddDimension(0,-10/1000,0);

    sld_doc.ClearSelection2(true);
    scmas[14].Select(False);
    scmas[16].Select(true);
    sld_doc.AddDimension((pazshir+5)/1000, ((stupdim/2)/1000), -10/1000);

   sld_doc.FeatureCut(false, false, false, 1, 1, 0.1, 0.1, false, false, false, false, 0.07, 0.07, false, false);

      end;

    1:
      begin {ploski}

        scmas[0]:=iskmgr.CreateCenterLine(0,0,0,(pulley_diam+2)/1000,0,0);

        scmas[1]:=iskmgr.CreateLine((-shirobod/2)/1000, bore_diam/1000, 0, (shirobod/2)/1000, bore_diam/1000, 0);
        scmas[1].Select(false);
        sld_doc.SketchAddConstraints('sgHORIZONTAL');

        scmas[2]:=iskmgr.CreateLine((shirobod/2)/1000, bore_diam/1000, 0,(shirobod/2)/1000 ,(pulley_diam)/1000 ,0);
        scmas[2].Select(false);
        sld_doc.SketchAddConstraints('sgVERTICAL');

         scmas[3]:=iskmgr.Create3PointArc((shirobod/2)/1000 ,(pulley_diam)/1000 ,0, (-shirobod/2)/1000 ,(pulley_diam)/1000 ,0 ,0, (pulley_diam+h)/1000,0);
        scmas[3].Select(false);

        scmas[4]:=iskmgr.CreateLine((-shirobod/2)/1000, pulley_diam/1000, 0,(-shirobod/2)/1000 ,(bore_diam)/1000 ,0);
        scmas[4].Select(false);
        sld_doc.SketchAddConstraints('sgVERTICAL');

   ((scmas[1] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[2] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[2] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[3] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(false);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[3] as ISketchArc).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[1] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

	 sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[1].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-50)/1000 ,0);
    sld_doc.ClearSelection2(true);

   sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[2].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-50)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[2].Select(false);
    scmas[4].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[0].Select(true);
    sld_doc.SketchAddConstraints('sgCOINCIDENT');
    sld_doc.ClearSelection2(true);

    scmas[0].Select(false);
    scmas[3].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[3].Select(false);
    sld_doc.IAddDimension2(0 ,(stupdim+stupdim)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[0].Select(false);
    scmas[1].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    ((scmas[3] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(False);
    scmas[0].Select(true);
    sld_doc.IAddDimension2((posadshir+10)/1000 ,(pulley_diam)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[2].Select(false);
    scmas[4].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    sld_doc.ClearSelection2(true);

   sld_doc.FeatureRevolve2(pi*2,false,0,0,0);

    iplasol2:=findplane(sld_doc,2);
   (iplasol2 as IFeature).Select(false);
    sld_doc.InsertSketch;

    scmas[13]:=iskmgr.CreateLine((-pazshir/2)/1000,(bore_diam+pazvisot)/1000,0,(-pazshir/2)/1000,0,0);
    scmas[14]:=iskmgr.CreateLine((-pazshir/2)/1000,0,0,(pazshir/2)/1000,0,0);
    scmas[15]:=iskmgr.CreateLine((pazshir/2)/1000,0, 0 ,(pazshir/2)/1000,(bore_diam+pazvisot)/1000, 0);
    scmas[16]:=iskmgr.CreateLine((pazshir/2)/1000,(bore_diam+pazvisot)/1000,0,(-pazshir/2)/1000,(bore_diam+pazvisot)/1000,0);
    scmas[17]:=iskmgr.CreateCenterLine(0,0,0,0,(pulley_diam+2)/1000,0);

    scmas[13].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
   scmas[14].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');
   scmas[15].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
   scmas[16].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');

    scmas[17].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

    scmas[13].Select(false);
    scmas[15].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    scmas[14].Select(false);
    scmas[16].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    sld_doc.ClearSelection2(true);
    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[14].Select(true);
    sld_doc.SketchAddConstraints('sgATMIDDLE');
    sld_doc.ClearSelection2(true);

    ((scmas[13] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[14] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[14] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[15] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[15] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[16] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[16] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[13] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[17].Select(true);
    sld_doc.SketchAddConstraints('sgCOINCIDENT');
    sld_doc.ClearSelection2(true);

    sld_doc.ClearSelection2(true);
    scmas[13].Select(False);
    scmas[15].Select(true);
    sld_doc.AddDimension(0,-10/1000,0);

    sld_doc.ClearSelection2(true);
    scmas[14].Select(False);
    scmas[16].Select(true);
    sld_doc.AddDimension((pazshir+5)/1000, ((stupdim/2)/1000), -10/1000);

   sld_doc.FeatureCut(false, false, false, 1, 1, 0.1, 0.1, false, false, false, false, 0.07, 0.07, false, false);


      end;

   2:
    begin {смещенный}

        scmas[0]:=iskmgr.CreateCenterLine(0,0,0,(pulley_diam+2)/1000,0,0);

        scmas[1]:=iskmgr.CreateLine(0, bore_diam/1000, 0, (posadshir)/1000, bore_diam/1000, 0);
        scmas[1].Select(false);
        sld_doc.SketchAddConstraints('sgHORIZONTAL');

        scmas[2]:=iskmgr.CreateLine((posadshir)/1000, bore_diam/1000, 0,(posadshir)/1000 ,(stupdim)/1000 ,0);
        scmas[2].Select(false);
        sld_doc.SketchAddConstraints('sgVERTICAL');

        scmas[3]:=iskmgr.CreateLine((posadshir)/1000, (stupdim)/1000, 0, (diskshir)/1000 ,(stupdim)/1000, 0);
        scmas[3].Select(false);
        sld_doc.SketchAddConstraints('sgHORIZONTAL');

   scmas[4]:=iskmgr.CreateLine((diskshir)/1000 ,(stupdim)/1000, 0, (diskshir)/1000 ,(diskdlin)/1000, 0);
   scmas[4].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[5]:=iskmgr.CreateLine((diskshir)/1000 ,(diskdlin)/1000, 0, (shirobod)/1000 ,(diskdlin)/1000, 0);
   scmas[5].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');

   scmas[6]:=iskmgr.CreateLine((shirobod)/1000 ,(diskdlin)/1000, 0, (shirobod)/1000 ,(pulley_diam)/1000, 0);
   scmas[6].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

   scmas[7]:=iskmgr.Create3PointArc((shirobod)/1000, (pulley_diam)/1000, 0, 0, (pulley_diam)/1000, 0,  (shirobod/2)/1000, (pulley_diam+h)/1000,0);

   scmas[8]:=iskmgr.CreateLine(0 ,(pulley_diam)/1000, 0, 0 , bore_diam/1000, 0);
   scmas[8].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

    ((scmas[1] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[2] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[2] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[3] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[3] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[4] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[4] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[5] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[5] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[6] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[6] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[7] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[7] as ISketchArc).GetEndPoint2 as ISketchPoint).Select(false);
   ((scmas[8] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[8] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[1] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

	 sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[2].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-50)/1000 ,0);
    sld_doc.ClearSelection2(true);

    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[0].Select(true);
    sld_doc.SketchAddConstraints('sgCOINCIDENT');
    sld_doc.ClearSelection2(true);

    scmas[0].Select(false);
    scmas[3].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(-stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    ((scmas[7] as ISketchArc).GetstartPoint2 as ISketchPoint).Select(False);
    scmas[5].Select(True);
    sld_doc.IAddDimension2((posadshir+10)/1000 ,(pulley_diam)/1000 ,0);
    sld_doc.ClearSelection2(true);

    ((scmas[7] as ISketchArc).GetEndPoint2 as ISketchPoint).Select(False);
    scmas[0].Select(True);
    sld_doc.IAddDimension2(-(posadshir)/1000 ,(pulley_diam-20)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[0].Select(false);
    scmas[1].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[5].Select(false);
    scmas[0].Select(true);
    sld_doc.IAddDimension2((posadshir+20)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[0].Select(false);
    scmas[1].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim/2)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[7].Select(true);
    sld_doc.IAddDimension2((0) ,(pulley_diam-10)/1000 ,0);
    sld_doc.ClearSelection2(true);

     scmas[2].Select(false);
    scmas[8].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(stupdim+50)/1000 ,0);
    sld_doc.ClearSelection2(true);

     scmas[6].Select(false);
    scmas[8].Select(true);
    sld_doc.IAddDimension2((-posadshir*2)/1000 ,(pulley_diam+50)/1000 ,0);
    sld_doc.ClearSelection2(true);

    scmas[4].Select(false);
    scmas[8].Select(true);
    sld_doc.AddDimension((-posadshir*2)/1000 ,(diskdlin+20)/1000 ,0);

   sld_doc.FeatureRevolve2(pi*2,false,0,0,0);

    iplasol2:=findplane(sld_doc,2);
   (iplasol2 as IFeature).Select(false);
    sld_doc.InsertSketch;


    scmas[13]:=iskmgr.CreateLine((-pazshir/2)/1000,(bore_diam+pazvisot)/1000,0,(-pazshir/2)/1000,0,0);
    scmas[14]:=iskmgr.CreateLine((-pazshir/2)/1000,0,0,(pazshir/2)/1000,0,0);
    scmas[15]:=iskmgr.CreateLine((pazshir/2)/1000,0, 0 ,(pazshir/2)/1000,(bore_diam+pazvisot)/1000, 0);
    scmas[16]:=iskmgr.CreateLine((pazshir/2)/1000,(bore_diam+pazvisot)/1000,0,(-pazshir/2)/1000,(bore_diam+pazvisot)/1000,0);
    scmas[17]:=iskmgr.CreateCenterLine(0,0,0,0,(pulley_diam+2)/1000,0);

    scmas[13].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
   scmas[14].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');
   scmas[15].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');
   scmas[16].Select(false);
   sld_doc.SketchAddConstraints('sgHORIZONTAL');


    scmas[17].Select(false);
   sld_doc.SketchAddConstraints('sgVERTICAL');

    scmas[13].Select(false);
    scmas[15].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');

    scmas[14].Select(false);
    scmas[16].Select(true);
    sld_doc.SketchAddConstraints('sgSAMELENGTH');


    sld_doc.ClearSelection2(true);
    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[14].Select(true);
    sld_doc.SketchAddConstraints('sgATMIDDLE');
    sld_doc.ClearSelection2(true);

    ((scmas[13] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[14] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[14] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[15] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[15] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[16] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');

   ((scmas[16] as ISketchLine).GetendPoint2 as ISketchPoint).Select(false);
   ((scmas[13] as ISketchLine).GetstartPoint2 as ISketchPoint).Select(true);
   sld_doc.SketchAddConstraints('sgMERGEPOINTS');


    sld_doc.SelectByID('', 'EXTSKETCHPOINT', 0, 0, 0);
    scmas[17].Select(true);
    sld_doc.SketchAddConstraints('sgCOINCIDENT');
    sld_doc.ClearSelection2(true);

    sld_doc.ClearSelection2(true);
    scmas[13].Select(False);
    scmas[15].Select(true);
    sld_doc.AddDimension(0,-10/1000,0);

    sld_doc.ClearSelection2(true);
    scmas[14].Select(False);
    scmas[16].Select(true);
    sld_doc.AddDimension((pazshir+5)/1000, ((stupdim/2)/1000), -10/1000);

   sld_doc.FeatureCut(true, false, true, 1, 1, 0.1, 0.1, false, false, false, false, 0.07, 0.07, false, false);

    end;


  end;

  sld_doc.SetInferenceMode(true);
  sld_doc.SetUserPreferenceToggle(swInputDimValOnCreate,true);

end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
  b:=FlatBelt.Gears[ComboBox1.ItemIndex];
  Memo1.Clear;
  Memo1.Lines.Add('a='+FloatToStr(b.a));
  Memo1.Lines.Add('d2='+FloatToStr(b.d2));
  Memo1.Lines.Add('alfa='+FloatToStr(b.alfa));
  Memo1.Lines.Add('Vol='+FloatToStr(b.Vol));
  Memo1.Lines.Add('d1='+FloatToStr(b.d1));
  Memo1.Lines.Add('Lh='+FloatToStr(b.Lh));
  Memo1.Lines.Add('Fb='+FloatToStr(b.Fb));
  Memo1.Lines.Add('l='+FloatToStr(b.l));
  Memo1.Lines.Add('bs='+FloatToStr(b.bs));
  Memo1.Lines.Add('u='+FloatToStr(b.u));
  Memo1.Lines.Add('n2='+FloatToStr(b.n2));
  Memo1.Lines.Add('v='+FloatToStr(b.V));
  Memo1.Lines.Add('fdelta='+FloatToStr(b.Fdelta));
  Memo1.Lines.Add('nyu='+FloatToStr(b.nyu));
  Memo1.Lines.Add('ft='+FloatToStr(b.Ft));
  Memo1.Lines.Add('f0='+FloatToStr(b.F0));
  Memo1.Lines.Add('z='+FloatToStr(b.z));
  Memo1.Lines.Add('b='+FloatToStr(b.b));
  Memo1.Lines.Add(IntToStr(FlatBelt.count));
  Button2.Enabled := true;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  MyInput: TInput;
  I: Integer;
begin
  MyInput.n1 := 720;
  MyInput.P1 := 2;
  MyInput.up := 3;
  MyInput.d1 := 80;
  MyInput.a := 0;
  MyInput.Q := 0;
  MyInput.Tip_nat := True;
  MyInput.Cp := 1;
  MyInput.Tip_pl := 0;
  MyInput.Fdelta := 0;
  MyInput.alfa_min := 150;
  MyInput.nyu_max := 5;
  MyInput.V_max := 20;
  MyInput.f_pr := 0.25;

  try
    FlatBelt := TFlatBelt.Create(MyInput);
    FlatBelt.Collect;
  except
    on E: Exception do
      ShowMessage('Вызвана ошибка ' + E.ClassName + ' с сообщением : ' +
        E.Message);
  end;

//
  for I := 0 to FlatBelt.Count-1 do
  begin
    Combobox1.Items.Append(IntToStr(i+1));
  end;
end;

end.
