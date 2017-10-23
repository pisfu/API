program Project2;

uses
  Forms,
  KompasAPI7_TLB in 'KompasAPI7_TLB.pas',
  SldWorks_TLB in 'SldWorks_TLB.pas',
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
