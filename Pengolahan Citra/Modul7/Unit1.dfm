object Form1: TForm1
  Left = 827
  Top = 133
  Width = 551
  Height = 369
  Caption = 'Penyimpanan Video dan Kamera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 336
    Top = 16
    Width = 115
    Height = 13
    Caption = 'Lama Perekaman [detik]'
  end
  object Label2: TLabel
    Left = 336
    Top = 32
    Width = 85
    Height = 13
    Caption = 'Indeks Maksimum'
  end
  object LabelNamaFile: TLabel
    Left = 8
    Top = 40
    Width = 50
    Height = 13
    Caption = 'Video.bmp'
  end
  object Image1: TImage
    Left = 0
    Top = 80
    Width = 320
    Height = 240
  end
  object ButtonNamaFile: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Nama FIle'
    TabOrder = 0
    OnClick = ButtonNamaFileClick
  end
  object ButtonSimpan: TButton
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = ButtonSimpanClick
  end
  object ButtonFormat: TButton
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Fornat'
    TabOrder = 2
    OnClick = ButtonFormatClick
  end
  object ButtonKompresi: TButton
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Kompresi'
    TabOrder = 3
    OnClick = ButtonKompresiClick
  end
  object EditLama: TEdit
    Left = 456
    Top = 16
    Width = 49
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object EditIndeks: TEdit
    Left = 456
    Top = 32
    Width = 49
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object VideoCap1: TVideoCap
    Left = 0
    Top = 80
    Width = 321
    Height = 241
    color = clWhite
    DriverOpen = False
    DriverIndex = -1
    VideoOverlay = False
    VideoPreview = False
    PreviewScaleToWindow = False
    PreviewScaleProportional = False
    PreviewRate = 30
    MicroSecPerFrame = 33333
    FrameRate = 30
    CapAudio = False
    VideoFileName = 'Video.avi'
    SingleImageFile = 'Capture.bmp'
    CapTimeLimit = 0
    CapIndexSize = 0
    CapToFile = True
    BufferFileSize = 0
    OnStatusCallback = VideoCap1StatusCallback
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'Avi'
    Filter = 'Video(*.avi)|*.avi'
    InitialDir = '-'
    Left = 296
    Top = 48
  end
end
