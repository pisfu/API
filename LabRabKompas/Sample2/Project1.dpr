program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Kompas6API5_TLB in 'Kompas6API5_TLB.pas',
  Kompas6Constants_TLB in 'Kompas6Constants_TLB.pas',
  Kompas6Constants3D_TLB in 'Kompas6Constants3D_TLB.pas',
  KompasAPI7_TLB in 'KompasAPI7_TLB.pas';

{$R *.res}

begin
  Forms.Application.Initialize;
  Forms.Application.MainFormOnTaskbar := True;
  Forms.Application.CreateForm(TForm1, Form1);
  Forms.Application.Run;
end.
