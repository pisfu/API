program Project1;

uses
  Forms,
  SldWorks_TLB in 'SldWorks_TLB.pas',
  CommonModelingUnit in 'F:\Modeling\CommonModelingUnit.pas',
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas',
  Unit4 in 'Unit4.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
