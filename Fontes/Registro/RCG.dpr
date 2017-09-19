program RCG;

uses
  Forms,
  rcg_Main in 'rcg_Main.pas' {rcgMain};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TrcgMain, rcgMain);
  Application.Run;
end.
