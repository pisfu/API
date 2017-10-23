program SW1;

uses
  Forms,
  SW in 'SW.pas' {Form1},
  MYSW1 in 'MYSW1.pas',
  SldWorks_TLB in 'SldWorks_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
