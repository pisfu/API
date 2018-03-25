program ProjectKompas2D;

uses
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  Kompas6API2D5COM_TLB in 'Kompas6API2D5COM_TLB.pas',
  Kompas6Constants_TLB in 'Kompas6Constants_TLB.pas',
  Kompas6Constants3D_TLB in 'Kompas6Constants3D_TLB.pas',
  KompasAPI7_TLB in 'KompasAPI7_TLB.pas',
  ksAPI7 in 'ksAPI7.pas',
  KsTLB in 'KsTLB.pas',
  ksConstTLB in 'ksConstTLB.pas',
  LDefin3D in 'LDefin3D.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
