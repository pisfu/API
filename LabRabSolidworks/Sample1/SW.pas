unit SW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActiveX, SldWorks_TLB,StdCtrls,Math, ComCtrls, Buttons, Menus,
  ExtCtrls, TeEngine, Series, TeeProcs, Chart, GEARSProcCE;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label6: TLabel;
    Label10: TLabel;
    Edit10: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit9: TEdit;
    Edit8: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Edit11: TEdit;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var

  Form1: TForm1;
  nZ1:word;
  {$R *.dfm}

implementation
uses MYSW1;


procedure TForm1.Button1Click(Sender: TObject);
var
  i, j, k,z: Integer;
  Aw,           //межосевое расстояние
  m1,           //модуль
  x1,           //коэффициенты смещения шестерни и колес
  xtau,        //Коэффициенты изменения толщины зуба в зависимости от установки резцов
  rwe,me,alfa,b,sigma:double;
  PointNumber, StartSplinePoint: WORD;
  nPoint,endLine,EndLineLast,StartLine,StartLineFirst:word;
  Data1: ARRAY1D;
begin
try
  me:=strtofloat(Form1.Edit4.Text);
  alfa:=DegToRad(Strtofloat(Form1.Edit6.Text));
  b:=strtofloat(Form1.Edit7.Text);
  z:=strtoint(Form1.Edit3.Text);
  Xtau:=strtoFloat(Form1.Edit2.Text);
  nPoint:=StrToInt(Edit5.Text);
  sigma:=DegToRad(Strtofloat(Form1.Edit10.Text));
  m1:=StrToFloat(Form1.Edit4.Text);
  X1:=StrToFloat(Form1.Edit1.Text);
  rwe:=StrToFloat(Form1.Edit11.Text);;
except
  Showmessage('Формат входных данных неправильный');
  exit;
end;
  DecimalSeparator:= '.';
  if  Calc(me,alfa,b,x1,rwe,z) then
  MYSW1.draw(me,rwe,sigma,x1,xtau,b,alfa,z,nPoint);
end;


procedure TForm1.Edit4Change(Sender: TObject);
begin
if (Edit3.Text='') or (Edit4.Text='') or (Edit6.Text='') or (Edit7.Text='') then
 begin
   Button1.Enabled:=False;
 end
  else
  Button1.Enabled:=True;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
DecimalSeparator:='.'
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key=',' then  key:=DecimalSeparator;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

end.
