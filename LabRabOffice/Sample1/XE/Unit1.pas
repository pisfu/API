unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Word_TLB, Excel_TLB,
  Vcl.OleAuto;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
// Можно посмотреть пример по адресу http://edn.embarcadero.com/article/10043

procedure TForm1.Button1Click(Sender: TObject);
var
  WordApp: WordApplication;
  Docs: Documents;
  Doc: WordDocument;
  Pars: Paragraphs;
  Par: Paragraph;
  D: OleVariant;
begin
  WordApp := CoWordApplication.Create;
  WordApp.Visible := True;

  // WordApp.Documents.Add(EmptyParam,EmptyParam,EmptyParam,True);
  // (W.Documents as OLEVariant).Open('D:\1.docx');
  // D:=W.Documents;
  // D.Open('D:\1.docx');

  Docs := WordApp.Documents;
  Doc := Docs.Add('Normal', False, EmptyParam, True);
  // Doc := WordApp.Documents.Add('Normal', False, EmptyParam, True);

  Doc := (WordApp.Documents.Item(1) as WordDocument);
  Doc.Paragraphs.Item(1).Range.Text := 'Первая строка';
  Doc.Paragraphs.Item(1).Range.Font.Name := 'Times New Roman';
  Doc.Paragraphs.Item(1).Range.Font.Size := 20;
  Doc.Paragraphs.Item(1).Range.Font.Color := clRed;
  Doc.Paragraphs.Item(1).Range.Font.Bold := 1;
  Doc.Paragraphs.Item(1).Range.Font.Italic := 1;
  Doc.Paragraphs.Item(1).Alignment := wdAlignParagraphCenter;
  Doc.Paragraphs.Add(EmptyParam);
  Doc.Paragraphs.Item(2).Range.Text := 'Вторая строка';
  Doc.Paragraphs.Add(EmptyParam);

  // Вставить картинку
  // Doc.Paragraphs.Item(3).Range.InlineShapes.AddPicture('D:\header.png', EmptyParam, EmptyParam, EmptyParam);

  // Сохранить файл
  // WordApp.Documents.Item(Index).SaveAs('D:\1.docx', EmptyParam, EmptyParam,
  // EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  // EmptyParam, EmptyParam, EmptyParam);

  // Закрыть документ без сохранения
  // Doc.Close(wdDoNotSaveChanges, EmptyParam, EmptyParam);

  // Закрыть Ворд
  // WordApp.Quit(EmptyParam, EmptyParam, EmptyParam);
end;

procedure TForm1.Button2Click(Sender: TObject);

// Примеры здесь: http://basicsprog.ucoz.ru/blog/2011-09-30-8

var
  CellName: String;
  Col: Integer;
  Row: Integer;
  GridPrevFile: string;
  ExcelApp: ExcelApplication;
  Sheet: ExcelWorksheet;
begin
  { ExcelApp.Workbooks.Open('C:\\Book1.xlsx', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam); }

  ExcelApp := CoExcelApplication.Create;

  ExcelApp.Visible[0] := True;

  ExcelApp.Workbooks.Add(xlWBatWorkSheet, 0);

  Sheet := ExcelApp.Workbooks[1].WorkSheets[1] as ExcelWorksheet;

  Sheet.Name := 'Расчет от ' + DateToStr(Date);

  ExcelApp.Application.ReferenceStyle[0] := xlR1C1;

  for Row := 2 to 10 do
    for Col := 2 to 5 do
    begin
      CellName := 'R[' + IntTostr(Row) + ']C[' + IntTostr(Col)+']';
      Sheet.Range[CellName, CellName].Value[xlRangeValueDefault] :=
        IntTostr(random(100));
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  CellName: String;
  Col: Char;
  Row: Integer;
  GridPrevFile: string;
  ExcelApp: ExcelApplication;
  Sheet: ExcelWorksheet;
begin
  { ExcelApp.Workbooks.Open('C:\\Book1.xlsx', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam); }

  ExcelApp := CoExcelApplication.Create;

  ExcelApp.Visible[0] := True;

  ExcelApp.Workbooks.Add(xlWBatWorkSheet, 0);

  Sheet := ExcelApp.Workbooks[1].WorkSheets[1] as ExcelWorksheet;

  Sheet.Name := 'Расчет от ' + DateToStr(Date);

  ExcelApp.Application.ReferenceStyle[0] := xlA1;

  for Col := 'A' to 'D' do
    for Row := 1 to 10 do
    begin
      CellName := Col + IntTostr(Row);
      Sheet.Range[CellName, CellName].Value[xlRangeValueDefault] :=
        IntTostr(random(100));
    end;
end;

end.
