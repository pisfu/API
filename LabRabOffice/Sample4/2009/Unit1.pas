unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Spin, Word_TLB, ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    SpinEdit1: TSpinEdit;
    ComboBox3: TComboBox;
    MaskEdit2: TMaskEdit;
    Edit8: TEdit;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

resourcestring
  StrHeaderText = 'Акционерное общество «Улан-Удэнский авиационный завод»' + sLineBreak;
  StrFirstLineText =
    'Уважаемые студенты, выпускники! Просим Вас ответить на вопросы анкеты, цель которой формирование единой базы студентов и выпускников профильных ВУЗов.'
    + sLineBreak;
  StrUniversityTitle = 'ВУЗ, специальность, год поступления – год окончания: ';
  StrUniversityText =
    'Cибирский федеральный университет, %s, направление: %s, период обучения: %s - %s' + sLineBreak;
  StrFio = 'Ф.И.О.: %s' + sLineBreak;
  StrBirthday = 'Дата рождения: %s' + sLineBreak;
  StrBirthPlace = 'Место рождения: %s' + sLineBreak;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  WordApp: WordApplication;
  Docs: Documents;
  Doc: WordDocument;
  Pars: Paragraphs;
  Par: Paragraph;
  D: OleVariant;
  I: Integer;
  s: string;
  s1: string;
begin
  WordApp := CoWordApplication.Create;
  WordApp.Visible := True;

  Docs := WordApp.Documents;
  Doc := Docs.Add('Normal', False, EmptyParam, True);

  // Создаём и форматируем заголовок
  Doc.Paragraphs.Add(EmptyParam);
  Doc.Paragraphs.Item(1).Range.Font.Name := 'Times New Roman';
  Doc.Paragraphs.Item(1).Range.Font.Color := clRed;
  Doc.Paragraphs.Item(1).Range.Font.Size := 16;
  Doc.Paragraphs.Item(1).Format.SpaceAfter := 16;
  Doc.Paragraphs.Item(1).Format.Alignment := wdAlignParagraphCenter;

  for I := 2 to 14 do
  begin
    // Создаём основную структуру анкеты и оформляем по ГОСТ
    Doc.Paragraphs.Add(EmptyParam);
    Doc.Paragraphs.Item(I).Range.Font.Name := 'Times New Roman';
    Doc.Paragraphs.Item(I).Range.Font.Color := clBlack;
    Doc.Paragraphs.Item(I).Range.Font.Size := 14;
    Doc.Paragraphs.Item(I).Format.Alignment := wdAlignParagraphJustify;
    Doc.Paragraphs.Item(I).Format.SpaceAfter := 7;
  end;

  Doc.Paragraphs.Item(1).Range.Text := StrHeaderText;
  Doc.Paragraphs.Item(2).Range.Text := StrFirstLineText;
  Doc.Paragraphs.Item(3).Range.Text := Format(StrFio, [Edit1.Text]);
  Doc.Paragraphs.Item(4).Range.Text := Format(StrBirthday, [DateToStr(DateTimePicker1.Date)]);
  Doc.Paragraphs.Item(5).Range.Text := StrUniversityTitle + Format(StrUniversityText,
    [ComboBox4.Text, Edit2.Text, ComboBox5.Text, ComboBox6.Text]);
  Doc.Paragraphs.Item(6).Range.Text := Format(StrBirthPlace, [Edit3.Text]);

  Doc.Paragraphs.Item(7).Range.Text := 'Адрес постоянной регистрации: ' + Edit4.Text + #13;

  if CheckBox1.Checked then
    s := 'Да, я согласен на переезд в другой регион'
  else
    s := 'Нет, я не согласен на переезд в другой регион';

  Doc.Paragraphs.Item(8).Range.Text := 'Согласны ли Вы на переезд в другой регион: ' + s + #13;
  Doc.Paragraphs.Item(9).Range.Text := 'Отношение к воинской обязанности: ' + ComboBox2.Text + #13;
  Doc.Paragraphs.Item(10).Range.Text :=
    'Где и когда проходили практику (организация, должность, период) ' + Memo1.Text + #13;

  if CheckBox2.Checked then
    s := 'Да, я работаю в ' + Edit6.Text
  else
    s := 'Нет, я не работаю';

  Doc.Paragraphs.Item(11).Range.Text := 'Работаете ли Вы в настоящее время? (укажите организацию): '
    + s + #13;
  Doc.Paragraphs.Item(12).Range.Text :=
    'Какой уровень дохода Вы считаете приемлемым в период практики?: ' + SpinEdit1.Text +
    'тыс. руб' + #13;
  Doc.Paragraphs.Item(13).Range.Text :=
    'Какими иностранными языками Вы владеете и в какой степени?: ' + ComboBox1.Text + #13;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Edit6.Enabled := CheckBox2.Checked;
end;

end.
