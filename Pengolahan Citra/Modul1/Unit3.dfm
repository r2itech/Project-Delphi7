object Form3: TForm3
  Left = 188
  Top = 117
  Width = 689
  Height = 313
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 96
    Width = 334
    Height = 19
    Caption = 'SELAMAT BELAJAR PENGOLAHAN CITRA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 48
    Width = 233
    Height = 153
    Caption = 'Warna'
    TabOrder = 0
  end
  object RadioButton1: TRadioButton
    Left = 32
    Top = 72
    Width = 113
    Height = 17
    Caption = 'DEFAULT'
    TabOrder = 1
  end
  object RadioButton2: TRadioButton
    Left = 32
    Top = 96
    Width = 113
    Height = 17
    Caption = 'MERAH'
    TabOrder = 2
  end
  object RadioButton3: TRadioButton
    Left = 32
    Top = 120
    Width = 113
    Height = 17
    Caption = 'HIJAU'
    TabOrder = 3
  end
  object RadioButton4: TRadioButton
    Left = 32
    Top = 144
    Width = 113
    Height = 17
    Caption = 'KUNING'
    TabOrder = 4
  end
  object RadioButton5: TRadioButton
    Left = 32
    Top = 168
    Width = 113
    Height = 17
    Caption = 'BIRU'
    TabOrder = 5
  end
  object Button1: TButton
    Left = 24
    Top = 216
    Width = 75
    Height = 25
    Caption = 'MODIFIKASI'
    TabOrder = 6
    OnClick = Button1Click
  end
end
