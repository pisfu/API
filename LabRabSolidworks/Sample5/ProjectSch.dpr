program ProjectSch;

uses
  Forms,
  UnitSch in 'UnitSch.pas' {FormGenerator};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormGenerator, FormGenerator);
  Application.Run;
end.
