object Form1: TForm1
  Left = 389
  Top = 196
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 59
    Height = 13
    Caption = 'Translasi 3D'
  end
  object Label2: TLabel
    Left = 8
    Top = 336
    Width = 30
    Height = 13
    Caption = 'Nilai A'
  end
  object Label3: TLabel
    Left = 8
    Top = 360
    Width = 30
    Height = 13
    Caption = 'Nilai B'
  end
  object Label4: TLabel
    Left = 8
    Top = 384
    Width = 30
    Height = 13
    Caption = 'Nilai C'
  end
  object Label5: TLabel
    Left = 104
    Top = 312
    Width = 60
    Height = 13
    Caption = 'Banyak Segi'
  end
  object eA: TEdit
    Left = 48
    Top = 336
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object eB: TEdit
    Left = 48
    Top = 360
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object eC: TEdit
    Left = 48
    Top = 384
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object eSegi: TEdit
    Left = 176
    Top = 312
    Width = 57
    Height = 21
    TabOrder = 3
    OnChange = eSegiChange
  end
  object StringGrid1: TStringGrid
    Left = 104
    Top = 336
    Width = 320
    Height = 120
    ColCount = 2
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 4
  end
  object ButtonExit: TButton
    Left = 344
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 5
    OnClick = ButtonExitClick
  end
  object ButtonTranslasi: TButton
    Left = 264
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Translasi'
    TabOrder = 6
  end
  object ButtonObyek: TButton
    Left = 184
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Obyek'
    TabOrder = 7
    OnClick = ButtonObyekClick
  end
end
