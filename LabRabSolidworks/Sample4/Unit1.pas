unit Unit1;

interface

uses
  {Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SldWorks_TLB, StdCtrls, UnitPloskostiKolesa, Math, ComObj, Build}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Build_kol, StdCtrls, SwConst_TLB,Math, ExtCtrls, Build_shest, Common_Unit;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    SD1: TSaveDialog;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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


procedure TForm1.Button1Click(Sender: TObject);
var gip1, gip2 : double;
    a, da, db, d, h, un: double;
    z:integer;
begin
  //OpenSW;

  try
  da:= StrToFloat(Edit1.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit1.SetFocus;
    exit;
  end;

  try
  d:= StrToFloat(Edit2.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit2.SetFocus;
    exit;
  end;

  try
  db:= StrToFloat(Edit3.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit3.SetFocus;
    exit;
  end;

  try
  a:= StrToFloat(Edit4.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit4.SetFocus;
    exit;
  end;

  try
  h:= StrToFloat(Edit5.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit5.SetFocus;
    exit;
  end;

  try
  z:= StrToInt(Edit6.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit6.SetFocus;
    exit;
  end;

  if (h/2000) >= (da/1000) then
    begin
      ShowMessage('Высота зуба превышает значение диаметра вершины');
      Edit5.SetFocus;
      exit;
    end;

  if da <= db then
    begin
      ShowMessage('Диаметр вершины должен быть больше диаметра впадины');
      Edit1.SetFocus;
      exit;
    end;

  if (da<=0) or (db<=0) or (d<=0) or (a<=0) or (h<=0) then
    begin
      ShowMessage('Все значения параметров должны быть больше нуля');
      Edit1.SetFocus;
      exit;
    end;

  {  gip1:= sqr(tan(DegToRad(a))*h/1000) + (h*h)/1000;
    gip2:= sqr(h/2000)+ (h*h)/1000;
    if gip1 > gip2 then
      begin
        ShowMessage('Угол наклона превышает допустимое значение');
        Edit4.SetFocus;
        exit;
      end;    }

  Postroenie_kolesa (a, da, db, d, h, z);

  if RadioButton1.Checked=true then
    closeSWSave;
  if RadioButton2.Checked=true then
    closeSWShow;
end;


procedure TForm1.Button2Click(Sender: TObject);
var a_sh, da_sh, db_sh, d_sh, h_sh, z_sh, d, da, db: double;
    z: integer;
begin
 // OpenSW;
  try
  da_sh:= StrToFloat(LabeledEdit1.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    LabeledEdit1.SetFocus;
    exit;
  end;

  try
  d_sh:= StrToFloat(LabeledEdit2.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    LabeledEdit2.SetFocus;
    exit;
  end;

  try
  db_sh:= StrToFloat(LabeledEdit3.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    LabeledEdit3.SetFocus;
    exit;
  end;

  try
  a_sh:= StrToFloat(LabeledEdit4.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    LabeledEdit4.SetFocus;
    exit;
  end;

  try
  h_sh:= StrToFloat(LabeledEdit5.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    LabeledEdit5.SetFocus;
    exit;
  end;

  try
  z_sh:= StrToFloat(LabeledEdit6.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    LabeledEdit6.SetFocus;
    exit;
  end;

  try
  da:= 0;
  da:= StrToFloat(Edit1.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit1.SetFocus;
    exit;
  end;

  try
  d:=0;
  d:= StrToFloat(Edit2.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit2.SetFocus;
    exit;
  end;

  try
  db:= 0;
  db:= StrToFloat(Edit3.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit3.SetFocus;
    exit;
  end;

  try
  z:= StrToInt(Edit6.Text);
  except
    ShowMessage('Некорректный ввод параметра');
    Edit6.SetFocus;
    exit;
  end;

  Postroenie_Shest (OpenSW, a_sh, da_sh, db_sh, d_sh, h_sh, z_sh, d, da, db,z);

  if RadioButton1.Checked=true then
    closeSWSave;
  if RadioButton2.Checked=true then
    closeSWShow;

end;


procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:byte;
begin
  if not (key in ['0'..'9', #8, DecimalSeparator]) then
    key:=#0;
end;

end.


