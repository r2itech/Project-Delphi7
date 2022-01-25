object Form1: TForm1
  Left = 192
  Top = 117
  Width = 1149
  Height = 539
  Caption = 'Citra Negatif'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 40
    Width = 561
    Height = 465
    Stretch = True
  end
  object Image2: TImage
    Left = 571
    Top = 40
    Width = 561
    Height = 465
    Stretch = True
  end
  object ButtonMuatCitra: TButton
    Left = 8
    Top = 8
    Width = 81
    Height = 25
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = '-'
    Left = 16
    Top = 48
  end
end
