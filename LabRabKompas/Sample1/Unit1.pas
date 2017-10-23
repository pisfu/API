unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, KompasAPI7_TLB, Kompas6Constants_TLB, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bsh,Dsh,M,Dst,Lst,sigma,C,De,D0,dv,dp,h,b1,ang:Extended;

  Form1: TForm1;
  j: extended;
  KOMAPP: IApplication;
  KOMDOC: IKompasDocument;
  LSS: ILineSegments;
  LineSeg:ILineSegment;
  Arcs: IArcs;
  PC:IParametriticConstraint;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    KOMAPP:=Co_Application.Create;
    KOMAPP.Visible:=true;
    KOMDOC := KOMAPP.Documents.Add(ksDocumentDrawing, true);
    KOMDOC.LayoutSheets.Item[0].Format.Format := ksFormatA4;
    KOMDOC.LayoutSheets.Item[0].Update;

    LSS := ((KOMDOC as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as
        IDrawingContainer).LineSegments;
    Arcs := ((KOMDOC as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as
        IDrawingContainer).Arcs;

    dv:=ComboBox1.Text;
    Dsh:=ComboBox2.Text;
    Bsh:=ComboBox3.Text;

    Dst:=1.65*dv;
    Lst:=1.2*dv;

    if ((Bsh>=40) and (Bsh<=125) and (Dsh=360))  then
      begin
        h:=1;
      end;

    if ((Bsh>=140) and (Bsh<=160) and (Dsh>=400) and (Dsh<=450))  then
      begin
        h:=1.2;
      end;

    if ((Bsh>=140) and (Bsh<=160) and (Dsh=800))  then
      begin
        h:=1.5;
      end;


end;

end.
