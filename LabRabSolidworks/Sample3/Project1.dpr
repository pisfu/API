program Project1;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  SketchSolid in 'SketchSolid.pas',
  Project1_TLB in 'Project1_TLB.pas' {$R *.TLB},
  SketchKompas in 'SketchKompas.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
