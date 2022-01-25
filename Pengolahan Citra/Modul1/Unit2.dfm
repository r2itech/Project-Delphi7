object Form2: TForm2
  Left = 196
  Top = 91
  Width = 560
  Height = 301
  Caption = 'Form2'
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
    Left = 136
    Top = 192
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object Edit1: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 136
    Top = 136
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 136
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 136
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 400
    Top = 136
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 176
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
