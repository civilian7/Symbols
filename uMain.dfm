object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'FontIcon Viewer'
  ClientHeight = 498
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object FontViewer: TStringGrid
    Left = 8
    Top = 40
    Width = 510
    Height = 444
    ColCount = 10
    DefaultColWidth = 48
    DefaultRowHeight = 48
    DoubleBuffered = True
    FixedCols = 0
    RowCount = 136
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe MDL2 Assets'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    OnDblClick = FontViewerDblClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 510
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe MDL2 Assets'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
