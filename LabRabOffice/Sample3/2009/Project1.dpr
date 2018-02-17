program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Excel_TLB in 'Excel_TLB.pas',
  Office_TLB in 'Office_TLB.pas',
  VBIDE_TLB in 'VBIDE_TLB.pas',
  Graph_TLB in 'Graph_TLB.pas';

{$R *.res}

begin
 Forms.Application.Initialize;
  Forms.Application.MainFormOnTaskbar := True;
  Forms.Application.CreateForm(TForm1, Form1);
  Forms.Application.Run;
end.
