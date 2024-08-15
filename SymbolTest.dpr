program SymbolTest;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form5},
  FBC.Symbols in 'FBC.Symbols.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
