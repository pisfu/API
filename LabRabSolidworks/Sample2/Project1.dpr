program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  TFlatBeltUnit in 'TFlatBeltUnit.pas',
  GearClassesUnit in 'GearClassesUnit.pas',
  GearTypesUnit in 'GearTypesUnit.pas',
  Gost in 'Gost.pas',
  SldWorks_TLB in 'SldWorks_TLB.pas',
  SwConst_TLB in 'SwConst_TLB.pas',
  CommonProc in 'CommonProc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
