object Form1: TForm1
  Left = 257
  Top = 137
  Width = 1044
  Height = 541
  Caption = 'Scalling Segitiga'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 7
    Width = 187
    Height = 13
    Caption = 'Menggambar SCALLING pada titik [0,0]'
  end
  object Label2: TLabel
    Left = 1004
    Top = 479
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 40
    Top = 319
    Width = 7
    Height = 13
    Caption = 'Y'
  end
  object Label4: TLabel
    Left = 40
    Top = 287
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 351
    Width = 401
    Height = 120
    ColCount = 4
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnClick = StringGrid1Click
  end
  object ButtonSegitiga: TButton
    Left = 184
    Top = 319
    Width = 75
    Height = 25
    Caption = 'Segitiga'
    Enabled = False
    TabOrder = 1
    OnClick = ButtonSegitigaClick
  end
  object ButtonScalling: TButton
    Left = 272
    Top = 319
    Width = 75
    Height = 25
    Caption = 'Scalling'
    Enabled = False
    TabOrder = 2
    OnClick = ButtonScallingClick
  end
  object ButtonKeluar: TButton
    Left = 360
    Top = 319
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = ButtonKeluarClick
  end
  object eY: TEdit
    Left = 64
    Top = 319
    Width = 49
    Height = 21
    TabOrder = 4
    OnChange = eYChange
  end
  object eX: TEdit
    Left = 64
    Top = 287
    Width = 49
    Height = 21
    TabOrder = 5
  end
end
