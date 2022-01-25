object Form1: TForm1
  Left = 384
  Top = 168
  Width = 1044
  Height = 618
  Caption = 'APLIKASI PENGOLAHAN CITRA DIGITAL'
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
    Top = 64
    Width = 257
    Height = 321
    Stretch = True
  end
  object Image2: TImage
    Left = 392
    Top = 64
    Width = 257
    Height = 321
  end
  object Label1: TLabel
    Left = 120
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Image 1'
  end
  object Label2: TLabel
    Left = 392
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Image 2'
  end
  object Image3: TImage
    Left = 752
    Top = 64
    Width = 257
    Height = 321
    Stretch = True
  end
  object Label3: TLabel
    Left = 752
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Hasil'
  end
  object Label4: TLabel
    Left = 280
    Top = 408
    Width = 30
    Height = 13
    Caption = 'Merah'
  end
  object Label5: TLabel
    Left = 280
    Top = 448
    Width = 24
    Height = 13
    Caption = 'Hijau'
  end
  object Label6: TLabel
    Left = 280
    Top = 488
    Width = 18
    Height = 13
    Caption = 'Biru'
  end
  object CheckBoxCenter: TCheckBox
    Left = 16
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Center'
    TabOrder = 0
    OnClick = CheckBoxCenterClick
  end
  object CheckBoxStretch: TCheckBox
    Left = 16
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Stretch'
    TabOrder = 1
    OnClick = CheckBoxStretchClick
  end
  object CheckBoxProportional: TCheckBox
    Left = 16
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Proportional'
    TabOrder = 2
    OnClick = CheckBoxProportionalClick
  end
  object CheckBoxAutoSize: TCheckBox
    Left = 16
    Top = 160
    Width = 97
    Height = 17
    Caption = 'Auto Size'
    TabOrder = 3
    OnClick = CheckBoxAutoSizeClick
  end
  object TrackBarMerah: TTrackBar
    Left = 312
    Top = 408
    Width = 273
    Height = 41
    Max = 250
    Min = -250
    Frequency = 50
    TabOrder = 4
    OnChange = TrackBarMerahChange
  end
  object TrackBarHijau: TTrackBar
    Left = 312
    Top = 448
    Width = 273
    Height = 49
    Max = 250
    Min = -250
    Frequency = 50
    TabOrder = 5
    OnChange = TrackBarHijauChange
  end
  object TrackBarBiru: TTrackBar
    Left = 312
    Top = 488
    Width = 273
    Height = 41
    Max = 250
    Min = -250
    Frequency = 50
    TabOrder = 6
    OnChange = TrackBarBiruChange
  end
  object CheckBoxSeragam: TCheckBox
    Left = 320
    Top = 528
    Width = 97
    Height = 17
    Caption = 'Seragam'
    TabOrder = 7
  end
  object MainMenu1: TMainMenu
    object File1: TMenuItem
      Caption = 'File'
      object MasukanCitra1: TMenuItem
        Caption = 'Masukan Citra'
        ShortCut = 16463
        OnClick = MasukanCitra1Click
      end
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        ShortCut = 16459
        OnClick = Keluar1Click
      end
      object Simpan1: TMenuItem
        Caption = 'Simpan'
        ShortCut = 16467
        OnClick = Simpan1Click
      end
    end
    object Proses1: TMenuItem
      Caption = 'Proses'
      object Keabuan1: TMenuItem
        Caption = 'Keabuan'
        OnClick = Keabuan1Click
      end
      object Negatif1: TMenuItem
        Caption = 'Negatif'
        OnClick = Negatif1Click
      end
      object AnalisisSobel1: TMenuItem
        Caption = 'Analisis Sobel'
        OnClick = AnalisisSobel1Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = '-'
    Left = 120
    Top = 64
  end
end
