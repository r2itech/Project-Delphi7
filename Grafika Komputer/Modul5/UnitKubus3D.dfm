object Form1: TForm1
  Left = 282
  Top = 218
  Width = 1044
  Height = 540
  Caption = 'Kubus 3D'
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
    Width = 112
    Height = 13
    Caption = 'Menggambar Kubus 3D'
  end
  object Label2: TLabel
    Left = 8
    Top = 328
    Width = 71
    Height = 13
    Caption = 'Koordinat Awal'
  end
  object Label3: TLabel
    Left = 8
    Top = 368
    Width = 58
    Height = 13
    Caption = 'Panjang Sisi'
  end
  object eX: TEdit
    Left = 104
    Top = 328
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object eY: TEdit
    Left = 160
    Top = 328
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object eZ: TEdit
    Left = 216
    Top = 328
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object eSisi: TEdit
    Left = 104
    Top = 368
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ButtonKubus: TButton
    Left = 192
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Kubus'
    TabOrder = 4
    OnClick = ButtonKubusClick
  end
  object ButtonUlang: TButton
    Left = 112
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Ulang'
    TabOrder = 5
    OnClick = ButtonUlangClick
  end
  object ButtonKeluar: TButton
    Left = 32
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = ButtonKeluarClick
  end
end
