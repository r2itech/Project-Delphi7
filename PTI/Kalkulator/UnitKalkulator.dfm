object Form1: TForm1
  Left = -300
  Top = 236
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
    Left = 320
    Top = 144
    Width = 63
    Height = 13
    Caption = 'BILANGAN 1'
  end
  object Label2: TLabel
    Left = 320
    Top = 184
    Width = 63
    Height = 13
    Caption = 'BILANGAN 2'
  end
  object Label3: TLabel
    Left = 320
    Top = 224
    Width = 31
    Height = 13
    Caption = 'HASIL'
  end
  object Edit1: TEdit
    Left = 424
    Top = 144
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 424
    Top = 184
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 424
    Top = 224
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 320
    Top = 272
    Width = 65
    Height = 25
    Caption = 'JUMLAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 416
    Top = 272
    Width = 65
    Height = 25
    Caption = 'BAGI'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 512
    Top = 272
    Width = 65
    Height = 25
    Caption = 'KALI'
    TabOrder = 5
    OnClick = Button3Click
  end
end
