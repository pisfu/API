unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Kompas6Constants_TLB, StdCtrls, KOMPASAPI7_TLB, ComObj, ExtCtrls, Math;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ListBox1: TListBox;
    ComboBox4: TComboBox;
    LabeledEdit1: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure DrawShkiv(LSS: ILineSegments; Arcs:IArcs; TopLeft:TPoint);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TKompasVersion = record
      Major, Minor, Release, Build: Integer;
  end;

  TBelt = record
      name:String;
      Wp,WpDevUP,WpDevDown,W,T,Tdev:Extended;
      lp,b,h,f,a34DpMin,a34DpMax,a34b1,a36DpMin,a36DpMax,a36b1,a38DpMin,a38DpMax,a38b1:Extended;
  end;


var
  Form2: TForm2;

  Belts:array of TBelt;
  BeltFile: TStringList;
  CurrentBelt:TBelt;

  var M,Dst,Lst,sigma,C,De,D0,d,dp,h,b1,ang:Extended;



  KA:IApplication;
  KD:IKompasDocument;
  LSS: ILineSegments;
  LineSeg:ILineSegment;
  Arcs:IArcs;
  arc:IArc;

implementation




{$R *.dfm}


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
end;

procedure LoadBelts;
var i,l:integer;
bu:string;
begin
DecimalSeparator:='.';
i:=1;
BeltFile:=TStringList.Create;
BeltFile.LoadFromFile('Belts.dat');
SetLength(belts,BeltFile.Count);
for l:=0 to BeltFile.Count-1 do begin
    i:=1;
    while BeltFile.Strings[l][i]<>'#' do begin  //name
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].name:=bu;
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin   //Wp
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].Wp:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //WpDevUp
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].WpDevUP:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //WpDevDown
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].WpDevDown:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //W
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].W:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //T
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].T:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //TDev
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].Tdev:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //lp
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].lp:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //b
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].b:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //h
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].h:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //f
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].f:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a34DpMin
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a34DpMin:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a34DpMax
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a34DpMax:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a34b1
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a34b1:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a36DpMin
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a36DpMin:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a36DpMax
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a36DpMax:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a36b1
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a36b1:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a38DpMin
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a38DpMin:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a38DpMax
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a38DpMax:=strtofloat(bu);
    bu:='';
    inc(i);

    while BeltFile.Strings[l][i]<>'#' do begin  //a38b1
        bu:=bu+BeltFile.Strings[l][i];
        inc(i);
    end;
    belts[l].a38b1:=strtofloat(bu);
    bu:='';
    inc(i);

end;
end;


procedure tform2.DrawShkiv(LSS: ILineSegments; Arcs:IArcs; TopLeft:TPoint);
var x0,y0:Extended;
    hzub:Extended;
begin
    d:=StrToFloat(labelededit1.text);
    case ComboBox4.ItemIndex of
        0:Dst:=1.65*d;
        1:Dst:=1.55*d;
    end;

    case ComboBox3.ItemIndex of
        0:b1:=CurrentBelt.a34b1;
        1:b1:=CurrentBelt.a36b1;
        2:b1:=CurrentBelt.a38b1;
    end;
    Lst:=1.35*d;
    sigma:=1.2*CurrentBelt.h;
    if ComboBox4.ItemIndex=1 then sigma:=sigma*0.8;
    c:=1.25*sigma;
    h:=CurrentBelt.h;
    m:=2*CurrentBelt.f;
    dp:=strtofloat(ComboBox2.Items.Strings[ComboBox2.ItemIndex]);
    de:=dp+(2*CurrentBelt.b);
    d0:=dp-2*(h+sigma);
    ang:= DegToRad(strtofloat(ComboBox3.Items.Strings[ComboBox3.ItemIndex]));

    x0:=105;
    y0:=170-de/4;
    hzub:=de/2-(dp/2-h);
    AddLine(lss,x0,y0-10,x0,y0+de/2+10,ksCSAxial);
    AddLine(lss,x0-lst/2-10,y0,x0+lst/2+10,y0,ksCSAxial);
    AddLine(lss,x0-lst/2,y0+d/2,x0+lst/2,y0+d/2,ksCSNormal);
    AddLine(lss,x0-lst/2,y0+d/2,x0-lst/2,y0+dst/2,ksCSNormal);
    AddLine(lss,x0-lst/2,y0+dst/2,x0-c/2,y0+dst/2,ksCSNormal);
    AddLine(lss,x0-c/2,y0+dst/2, x0-c/2,y0+d0/2,ksCSNormal);
    AddLine(lss,x0-c/2,y0+d0/2,x0-m/2,y0+d0/2,ksCSNormal);
    AddLine(lss,x0-m/2,y0+d0/2,x0-m/2,y0+de/2,ksCSNormal);
    AddLine(lss,x0-m/2,y0+de/2,x0-b1/2,y0+de/2,ksCSNormal);
    AddLine(lss,x0-b1/2,y0+de/2,x0-b1/2+hzub*tan(ang/2),y0+dp/2-h,ksCSNormal);


end;



procedure TForm2.Button1Click(Sender: TObject);
begin
    KA:=Co_Application.Create;
    KA.Visible:=true;
    KD := KA.Documents.Add(ksDocumentDrawing, true);
    KD.LayoutSheets.Item[0].Format.Format := ksFormatA4;
    KD.LayoutSheets.Item[0].Update;

    LSS := ((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as
        IDrawingContainer).LineSegments;
    Arcs := ((KD as IDrawingDocument).ViewsAndLayersManager.Views.ActiveView as
        IDrawingContainer).Arcs;


    //LineSeg := AddLine(LSS, 50, 50, 100, 100);
    {with arcs.Add do begin
        Xc:=100;
        Yc:=100;
        X1:=90;
        Y1:=100;
        X2:=110;
        Y2:=100;
        Radius:=100;
        Direction:=true;
        Update;
    end;}

    DrawShkiv(lss,arcs,Point(100,250));

close;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
    CurrentBelt:=belts[ComboBox1.ItemIndex];
    ComboBox3Change(nil);
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
var i:integer;
begin
    ComboBox2.Clear;
    case ComboBox3.ItemIndex of
        0: for i:=0 to ListBox1.Items.Count-1 do begin
               if (strtofloat(ListBox1.Items.Strings[i])>=CurrentBelt.a34DpMin) and
                  (strtofloat(ListBox1.Items.Strings[i])<=CurrentBelt.a34DpMax) then
                    ComboBox2.Items.Add(ListBox1.Items.Strings[i]);
           end;
        1: for i:=0 to ListBox1.Items.Count-1 do begin
               if (strtofloat(ListBox1.Items.Strings[i])>=CurrentBelt.a36DpMin) and
                  (strtofloat(ListBox1.Items.Strings[i])<=CurrentBelt.a36DpMax) then
                    ComboBox2.Items.Add(ListBox1.Items.Strings[i]);
           end;

        2: for i:=0 to ListBox1.Items.Count-1 do begin
               if (strtofloat(ListBox1.Items.Strings[i])>=CurrentBelt.a38DpMin) and
                  (strtofloat(ListBox1.Items.Strings[i])<=CurrentBelt.a38DpMax) then
                    ComboBox2.Items.Add(ListBox1.Items.Strings[i]);
           end;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var i:integer;
begin
    LoadBelts();
    ComboBox1.Items.Clear;
    for i:=0 to length(belts)-1 do begin
        ComboBox1.Items.Add(belts[i].name);
    end;
    ComboBox1.ItemIndex:=0;
    ComboBox3.ItemIndex:=0;
    ComboBox2.ItemIndex:=0;
    ComboBox4.ItemIndex:=0;
end;

end.
