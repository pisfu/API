program Project1;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Kompas6Constants_TLB in 'Kompas6Constants_TLB.pas',
  Kompas6API5_TLB in 'Kompas6API5_TLB.pas',
  KompasAPI7_TLB in 'KompasAPI7_TLB.pas';

{$R *.res}

begin
  forms.Application.Initialize;
  forms.Application.MainFormOnTaskbar := True;
  forms.Application.CreateForm(TForm2, Form2);
  Forms.Application.Run;
end.
