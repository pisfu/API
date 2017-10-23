program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Office_TLB in 'Office_TLB.pas',
  VBIDE_TLB in 'VBIDE_TLB.pas',
  Excel_TLB in 'Excel_TLB.pas';

{$R *.res}

begin
  forms.Application.Initialize;
  forms.Application.MainFormOnTaskbar := True;
  forms.Application.CreateForm(TForm1, Form1);
  forms.Application.Run;
end.
