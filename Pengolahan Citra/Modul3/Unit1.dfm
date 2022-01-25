object Form1: TForm1
  Left = 362
  Top = 193
  Width = 731
  Height = 502
  Caption = 'Elemen Warna'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelPosisi: TLabel
    Left = 104
    Top = 16
    Width = 37
    Height = 16
    Caption = 'Posisi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelMerah: TLabel
    Left = 296
    Top = 16
    Width = 59
    Height = 16
    Caption = 'Merah (R)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelHijau: TLabel
    Left = 448
    Top = 16
    Width = 52
    Height = 16
    Caption = 'Hijau (G)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelBiru: TLabel
    Left = 592
    Top = 16
    Width = 43
    Height = 16
    Caption = 'Biru (B)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 0
    Top = 48
    Width = 713
    Height = 417
    OnMouseDown = Image1MouseDown
  end
  object ButtonMuatCitra: TButton
    Left = 8
    Top = 8
    Width = 81
    Height = 33
    Caption = 'Muat Citra'
    TabOrder = 0
    OnClick = ButtonMuatCitraClick
  end
  object EditR: TEdit
    Left = 360
    Top = 16
    Width = 73
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object EditG: TEdit
    Left = 504
    Top = 16
    Width = 73
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object EditB: TEdit
    Left = 640
    Top = 16
    Width = 73
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = '-'
    Left = 8
    Top = 56
  end
end
