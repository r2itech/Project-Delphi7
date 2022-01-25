object Form1: TForm1
  Left = 316
  Top = 175
  Width = 928
  Height = 486
  Caption = 'Scalling Persegii'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  object Label3: TLabel
    Left = 40
    Top = 303
    Width = 6
    Height = 13
    Caption = 'Y'
  end
  object Label4: TLabel
    Left = 40
    Top = 271
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 321
    Width = 401
    Height = 120
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnClick = StringGrid1Click
  end
  object ButtonPersegi: TButton
    Left = 120
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Persegi'
    Enabled = False
    TabOrder = 1
    OnClick = ButtonPersegiClick
  end
  object ButtonScalling: TButton
    Left = 200
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Scalling'
    Enabled = False
    TabOrder = 2
    OnClick = ButtonScallingClick
  end
  object ButtonKeluar: TButton
    Left = 360
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = ButtonKeluarClick
  end
  object eY: TEdit
    Left = 64
    Top = 295
    Width = 41
    Height = 21
    TabOrder = 4
    OnChange = eYChange
  end
  object eX: TEdit
    Left = 64
    Top = 263
    Width = 41
    Height = 21
    TabOrder = 5
  end
  object ButtonUlang: TButton
    Left = 280
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Ulang'
    TabOrder = 6
    OnClick = ButtonUlangClick
  end
end
