object Form1: TForm1
  Left = 360
  Top = 207
  Width = 1044
  Height = 540
  Caption = 'Rotasi 3D'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 432
    Top = 408
    Width = 60
    Height = 13
    Caption = 'Banyak Segi'
  end
  object Label3: TLabel
    Left = 432
    Top = 440
    Width = 28
    Height = 13
    Caption = 'Sudut'
  end
  object eSegi: TEdit
    Left = 504
    Top = 408
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '4'
    OnChange = eSegiChange
  end
  object eSudut: TEdit
    Left = 504
    Top = 440
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 352
    Width = 417
    Height = 120
    ColCount = 2
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    object File1: TMenuItem
      Caption = 'File'
      object Obyek1: TMenuItem
        Caption = 'Obyek'
        OnClick = Obyek1Click
      end
      object Rotasi1: TMenuItem
        Caption = 'Rotasi'
        object SumbuX1: TMenuItem
          Caption = 'Sumbu X'
          OnClick = SumbuX1Click
        end
        object SumbuY1: TMenuItem
          Caption = 'Sumbu Y'
          OnClick = SumbuY1Click
        end
        object SumbuZ1: TMenuItem
          Caption = 'Sumbu Z'
          OnClick = SumbuZ1Click
        end
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Refresh1: TMenuItem
        Caption = 'Refresh'
        OnClick = Refresh1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
