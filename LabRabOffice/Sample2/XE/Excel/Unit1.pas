unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBIDE_TLB, excel_tlb, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  mchart: ExcelChart;
  mshape:Shape;
  CellName: String;
  Col: Char;
  Row: Integer;
  GridPrevFile: string;
  ExcelApp: ExcelApplication;
  Sheet: ExcelWorksheet;
  y1, y2, y3 , x, xb, xe, a1, a2, a3, st: Extended;
  //y1m, y2m, y3m

procedure TForm1.Button1Click(Sender: TObject);
begin


  xb:=StrToFloat(Edit1.Text);
  xe:=StrToFloat(Edit2.Text);
  a1:=StrToFloat(Edit3.Text);
  a2:=StrToFloat(Edit4.Text);
  a3:=StrToFloat(Edit5.Text);
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
  while ((x<=xe) and (x>=xb)) do
    begin
      y1:=(a1*(x*x*x)+(a1*(x*x)+(a1*x)));
      Sheet.Range[col+IntToStr(row), col+IntToStr(row)].Value[xlRangeValueDefault]:=y1;
      x:=x+st;
      row:=row+1;
    end;

  col:='C';
  x:=xb;
  Sheet.Range[col+'1', col+'1'].Value[xlRangeValueDefault]:='y2';
  row:=2;
  while ((x<=xe) and (x>=xb)) do
    begin
      y2:=(a2*(x*x*x)+(a2*(x*x)+(a2*x)));
      Sheet.Range[col+IntToStr(row), col+IntToStr(row)].Value[xlRangeValueDefault]:=y2;
      x:=x+st;
      row:=row+1;
    end;

  col:='D';
  x:=xb;
  Sheet.Range[col+'1', col+'1'].Value[xlRangeValueDefault]:='y3';
  row:=2;
  while ((x<=xe) and (x>=xb)) do
    begin
      y3:=(a3*(x*x*x)+(a3*(x*x)+(a3*x)));
      Sheet.Range[col+IntToStr(row), col+IntToStr(row)].Value[xlRangeValueDefault]:=y3;
      x:=x+st;
      if row=5 then
        begin
          showmessage(floattostr(y3));
        end;
      row:=row+1;

    end;

{
Before:= ExcelApp.Sheets.Add(EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0);

After:= EmptyParam;

lcid:= 1;

Count:= 1;

Type_:= xlChart;

ExcelApp.Worksheets.Add(Before, After, Count, Type_, lcid);
}

sheet.Range['A2','D'+inttostr(row)].Select;
mshape:=Sheet.Shapes.AddChart(xlXYScatterSmoothNoMarkers,250,1,800,800);
(mshape.Chart as ExcelChart).Location(xlLocationAsNewSheet,EmptyParam);

//Sheet.Shapes.AddChart()


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ExcelApp:=CoExcelApplication.Create;

  ExcelApp.Visible[0] := True;

  ExcelApp.Workbooks.Add(xlWBatWorkSheet, 0);

  Sheet := ExcelApp.Workbooks[1].WorkSheets[1] as ExcelWorksheet;

  ExcelApp.Application.ReferenceStyle[0] := xlA1;
end;

end.
