object Form1: TForm1
  Left = 237
  Top = 135
  Width = 716
  Height = 362
  Caption = 'Penyimpanan Frame Tunggal'
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
  object LabelNamaFile: TLabel
    Left = 8
    Top = 40
    Width = 52
    Height = 13
    Caption = 'Frame.bmp'
  end
  object Image1: TImage
    Left = 360
    Top = 80
    Width = 340
    Height = 240
  end
  object ButtonNamaFile: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Nama File'
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
  object ButtonClipboard: TButton
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Clipboard'
    TabOrder = 2
    OnClick = ButtonClipboardClick
  end
  object VideoCap1: TVideoCap
    Left = 8
    Top = 80
    Width = 340
    Height = 240
    color = clWhite
    DriverOpen = False
    DriverIndex = -1
    VideoOverlay = False
    VideoPreview = False
    PreviewScaleToWindow = False
    PreviewScaleProportional = False
    PreviewRate = 30
    MicroSecPerFrame = 66667
    FrameRate = 15
    CapAudio = False
    VideoFileName = 'Video.avi'
    SingleImageFile = 'Capture.bmp'
    CapTimeLimit = 0
    CapIndexSize = 0
    CapToFile = True
    BufferFileSize = 0
    OnFrameCallback = VideoCap1FrameCallback
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmaps (*.bmp)|*bmp'
    InitialDir = '-'
    Left = 328
    Top = 16
  end
end
