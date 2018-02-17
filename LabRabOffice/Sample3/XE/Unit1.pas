unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Excel_TLB, VBIDE_TLB,
  Math, Graph_TLB;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  Form1: TForm1;
  AChart: _Chart;
  mchart: ExcelChart;
  mshape: Shape;
  CellName: String;
  oChart: ExcelChart;
  Col: Char;
  defaultLCID: Cardinal;
  Row: Integer;
  mAxis:Axis;
  GridPrevFile: string;
  MyDisp: IDispatch;
  ExcelApp: ExcelApplication;
  Sheet: ExcelWorksheet;
  y1, y2, y3, x, xb, xe, a1, a2, a3, st: Extended;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ExcelApp := CoExcelApplication.Create;

  ExcelApp.Visible[0] := True;

  ExcelApp.Workbooks.Add(xlWBatWorkSheet, 0);

  Sheet := ExcelApp.Workbooks[1].WorkSheets[1] as ExcelWorksheet;

  ExcelApp.Application.ReferenceStyle[0] := xlA1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  xb:=StrToFloat(Edit1.Text);
  xe:=StrToFloat(Edit2.Text);
  st:=StrToFloat(Edit6.Text);



  col:='A';
  x:=xb;
  Sheet.Range[col+'1', col+'1'].Value[xlRangeValueDefault]:='x';
  row:=2;
  while ((x<=xe) and (x>=xb)) do
    begin
      Sheet.Range[col+IntToStr(row), col+IntToStr(row)].Value[xlRangeValueDefault]:=x;
      x:=x+st;
      row:=row+1;
    end;

  col:='B';
  x:=xb;
  Sheet.Range[col+'1', col+'1'].Value[xlRangeValueDefault]:='y1';
  row:=2;
  while ((x<=xe) and (x>=xb)) and (-Pi<=X) and (X<=Pi) do
    begin
      y1:=(Sin(3*x)*cos(5*x));
      Sheet.Range[col+IntToStr(row), col+IntToStr(row)].Value[xlRangeValueDefault]:=y1;
      x:=x+st;
      row:=row+1;
    end;

sheet.Range['A2','B'+inttostr(row)].Select;
//mshape:=Sheet.Shapes.AddChart(xlXYScatterSmoothNoMarkers,300,1,700,750);

//   ExcelApp.Charts.Add(10,10,100,100,defaultLCID);
  mshape:=Sheet.Shapes.AddChart(xlXYScatterSmoothNoMarkers,250,1,800,800);
mchart:=(mshape.Chart as ExcelChart).Location(xlLocationAsNewSheet,EmptyParam);

MyDisp:=mchart.Axes(xlValue, xlPrimary, 0);

   mAxis:=Axis(MyDisp);

    mAxis.HasTitle:=True;
    mAxis.AxisTitle.Caption:='sadfsf';


//  Sheet.Range['A2', 'B' + IntToStr(Row)].Select;
//  mchart := Sheet.ChartObjects(1,defaultLCID) as ExcelChart;
//  mchart := Sheet.ChartObjects(1,defaultLCID) as ExcelChart;


 // .AddChart(xlXYScatterSmoothNoMarkers, 300, 1, 700, 750);
  //(oChart.SeriesCollection(1, lcid) as Series).XValues := Sheet.Range['C2:C6', EmptyParam];
  //ExcelApp.Application.ActiveWorkbook.ActiveChart.SetElement(328);
  //ExcelApp.Application.ActiveWorkbook.ActiveChart.SetElement(301);
  {AChart.HasTitle[defaultLCID] := True;
   AChart.ChartTitle[defaultLCID].Characters[EmptyParam, EmptyParam].Text := 'Расход газа';

   with (AChart.Axes(xlCategory, xlPrimary, defaultLCID) as Axis) do begin
   HasTitle := True;
   AxisTitle.Characters[EmptyParam, EmptyParam].Text := 'Дата/Время';
   end;}
//  (mshape.Chart as ExcelChart).SetElement(1);
//  ExcelApp.Application.ActiveWorkbook.ActiveChart.ApplyLayout(2, 1);
  //(Axes(xlValue, xlPrimary, lcid) as Axis).HasTitle := True;
{  ExcelApp.Application.ActiveWorkbook.ActiveChart.HasTitle[defaultLCID] := True;
  (ExcelApp.ActiveChart.Axes(xlValue, xlPrimary, lcid) as Axis)
    .AxisTitle



    (Axes(xlValue, xlPrimary, lcid) as Axis)
    .AxisTitle.Characters.EmptyParam, EmptyParam].Text := 'у.е.';
}  //(ExcelApp.Application.ActiveWorkbook.ActiveChart.Axes(xlValue, xlPrimary, lcid) as Axis).AxisTitle.Text:='2';
  {(Axes(xlValue, xlPrimary, lcid) as Axis).AxisTitle.
   Characters[EmptyParam, EmptyParam].Text := 'у.е.';
   (Axes(xlValue, xlPrimary, lcid) as Axis).AxisTitle.Orientation := xlUpward;}
  //ExcelApp.Application.ActiveWorkbook.ActiveChart.SetElement(306);
  {ctiveChart.Axes(xlCategory).AxisTitle.Select
   ActiveChart.Axes(xlValue, xlPrimary).AxisTitle.Text = "2222"
   Selection.Format.TextFrame2.TextRange.Characters.Text = "2222"
   With Selection.Format.TextFrame2.TextRange.Characters(1, 4).ParagraphFormat
   .TextDirection = msoTextDirectionLeftToRight
   .Alignment = msoAlignCenter
   End With
   With Selection.Format.TextFrame2.TextRange.Characters(1, 4).Font
   .BaselineOffset = 0
   .Bold = msoTrue
   .NameComplexScript = "+mn-cs"
   .NameFarEast = "+mn-ea"
   .Fill.Visible = msoTrue
   .Fill.ForeColor.RGB = RGB(0, 0, 0)
   .Fill.Transparency = 0
   .Fill.Solid
   .Size = 10
   .Italic = msoFalse
   .Kerning = 12
   .Name = "+mn-lt"
   .UnderlineStyle = msoNoUnderline
   .Strike = msoNoStrike
   End With
   ActiveChart.PlotArea.Select
   End Sub}

  //(oChart.Axes(xlCategory, xlPrimary, lcid) as Axis).TickLabels.Font.Name
  //(mshape.Chart as ExcelChart).SetElement (msoElementPrimaryValueGridLinesNone);
  //mshape.Chart.Axes(2).AxisTitle.Text := 'Подпись вдоль оси ординат';
  //Ch.Chart.Axes(2).AxisTitle.Text

  end;

  end.
