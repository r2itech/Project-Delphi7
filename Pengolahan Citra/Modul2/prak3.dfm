object Form3: TForm3
  Left = 449
  Top = 233
  Width = 773
  Height = 399
  Caption = 'Tampil Citra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 120
    Top = 16
    Width = 601
    Height = 321
  end
  object ButtonMuatCitra: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object CheckBoxCenter: TCheckBox
    Left = 16
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Center'
    TabOrder = 1
    OnClick = CheckBoxCenterClick
  end
  object CheckBoxStretch: TCheckBox
    Left = 16
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Stretch'
    TabOrder = 2
    OnClick = CheckBoxStretchClick
  end
  object CheckBoxProportional: TCheckBox
    Left = 16
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Proportional'
    TabOrder = 3
    OnClick = CheckBoxProportionalClick
  end
  object CheckBoxAutoSize: TCheckBox
    Left = 16
    Top = 160
    Width = 97
    Height = 17
    Caption = 'Auto Size'
    TabOrder = 4
    OnClick = CheckBoxAutoSizeClick
  end
  object ButtonUkuranSemula: TButton
    Left = 16
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Ukuran Semula'
    TabOrder = 5
    OnClick = ButtonUkuranSemulaClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = '-'
    Left = 144
    Top = 32
  end
  object MainMenu1: TMainMenu
    object MUATCITRA1: TMenuItem
      Caption = 'FILE'
      object File1: TMenuItem
        Caption = 'MUAT CITRA'
        ShortCut = 16463
        OnClick = File1Click
      end
      object file2: TMenuItem
        Caption = 'EXIT'
        ShortCut = 16472
        OnClick = file2Click
      end
    end
    object OPERASI1: TMenuItem
      Caption = 'OPERASI'
      object center: TMenuItem
        Caption = 'CENTER'
        OnClick = centerClick
      end
      object stretch: TMenuItem
        Caption = 'STRETCH'
        OnClick = stretchClick
      end
      object proportional: TMenuItem
        Caption = 'PROPORTIONAL'
        OnClick = proportionalClick
      end
      object autosize: TMenuItem
        Caption = 'AUTO SIZE'
        OnClick = autosizeClick
      end
    end
  end
end
