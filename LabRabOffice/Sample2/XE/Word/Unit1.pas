unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Word_TLB;

type
  TForm1 = class(TForm)
        Button1: TButton;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox6: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;


    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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

  Docs := WordApp.Documents;
  Doc := Docs.Add('Normal', False, EmptyParam, True);

  Doc := (WordApp.Documents.Item(1) as WordDocument);
  Doc.Paragraphs.Item(1).Format.LeftIndent:=WordApp.CentimetersToPoints(8) ;
  Doc.Paragraphs.Item(1).Format.SpaceAfter:=12;
  Doc.Paragraphs.Item(1).Range.Text :=
    'Ректору Сибирского федерального университета'
    +#13+'Ваганову Е.А.'
    +#13+ComboBox1.Text
    +#13+ComboBox2.Text
    +#13+Edit1.Text
    +#13
    +#13
    +#13+'Заявление'
    +#13+'Прошу прикрепить меня соискателем ученой степени кандидата наук:'
    +#13+'1. Для сдачи кандидатаских экзаменов по:'
    +#13+'Иcтории и философии науки:   '+ ComboBox4.Text
    +#13+'Иностранному языку:   '+ ComboBox5.Text+'   ('+ Edit2.Text+')'
    +#13+'Спец. предмету:   '+ Edit3.Text
    +#13
    +#13+'2. Выполнения диссертационной работы по теме: "'+Edit4.Text+'"'
    +#13+'Научная специальность: '+ Edit5.Text
    +#13
    +#13+'Научным руководителем прошу назначить: '+' '+Edit6.Text+' '+Edit7.Text+' '+Edit8.Text
    +#13
    +#13+'Срок прикрепления: '+ComboBox6.Text
    +#13
    +#13
    +#13+'Дата: '+DateToStr(DateTimePicker1.DateTime)+#09+#09+#09+#09+#09+#09+#09+'Подпись __________'
    ;
  Doc.Paragraphs.Item(1).Range.Font.Name := 'Times New Roman';
  Doc.Paragraphs.Item(1).Range.Font.Size := 12;
  Doc.Paragraphs.Item(1).Range.Font.Color := clBlack;
  Doc.Paragraphs.Item(1).Range.Font.Bold := 0;
  Doc.Paragraphs.Item(1).Range.Font.Italic := 0;
  Doc.Paragraphs.Item(1).Alignment:= wdAlignParagraphLeft;

  WordApp.Selection.WholeStory;
  WordApp.Selection.ParagraphFormat.LineSpacing := WordApp.LinesToPoints(0.9);
  WordApp.Selection.Font.Name:= 'Times New Roman';
  WordApp.Selection.Font.Size:= 12;
  WordApp.Selection.Font.Color:=clBlack;

  Doc.Paragraphs.Item(8).Format.LeftIndent:=WordApp.CentimetersToPoints(0) ;
  Doc.Paragraphs.Item(8).Range.Font.Size := 14 ;
  Doc.Paragraphs.Item(8).Format.Alignment:=wdAlignParagraphCenter;
  Doc.Paragraphs.Item(8).Range.Font.bold:=1;

  doc.Paragraphs.Item(9).Format.LeftIndent := WordApp.CentimetersToPoints(1.5);
  doc.Paragraphs.Item(10).Format.LeftIndent := WordApp.CentimetersToPoints(1.5);
  doc.Paragraphs.Item(11).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);
  doc.Paragraphs.Item(12).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);
  doc.Paragraphs.Item(13).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);

  doc.Paragraphs.Item(15).Format.LeftIndent := WordApp.CentimetersToPoints(1.5);
  doc.Paragraphs.Item(16).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);

  doc.Paragraphs.Item(18).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);

  Doc.Paragraphs.Item(20).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);
  Doc.Paragraphs.Item(23).Format.LeftIndent := WordApp.CentimetersToPoints(0.5);
end;

end.
