unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.Menus, Vcl.Grids;

type
  TfrmMain = class(TForm)
    FontViewer: TStringGrid;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FontViewerDblClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  FBC.Symbols;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  LCol: Integer;
  LRow: Integer;
begin
  LCol := 0;
  LRow := 0;
  TSymbolIcon.ForEach(
    procedure(ACharCode: WORD)
    begin
      FontViewer.Cells[LCol, LRow] := Char(ACharCode);
      Inc(LCol);
      if (LCol >= 10) then
      begin
        LCol := 0;
        Inc(LRow);
      end;
    end
  );
end;

procedure TfrmMain.FontViewerDblClick(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + FontViewer.Cells[FontViewer.Col, FontViewer.Row];
end;

end.
