object Form1: TForm1
  Left = 66
  Top = 167
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 368
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 368
    Top = 160
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Edit1: TEdit
    Left = 368
    Top = 120
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 368
    Top = 184
    Width = 209
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 480
    Top = 224
    Width = 41
    Height = 17
    Caption = 'Login'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 224
    Width = 41
    Height = 17
    Caption = 'Batal'
    TabOrder = 3
    OnClick = Button2Click
  end
end
