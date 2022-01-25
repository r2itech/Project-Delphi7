object Form1: TForm1
  Left = 956
  Top = 124
  Width = 472
  Height = 445
  Caption = 'Tampil Preview Kamera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDriverKamera: TLabel
    Left = 8
    Top = 48
    Width = 265
    Height = 13
    Caption = 'Driver Kamera'
  end
  object LabelFormatVideo: TLabel
    Left = 8
    Top = 72
    Width = 273
    Height = 13
    Caption = 'Format Video'
  end
  object ButtonPreview: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Preview'
    TabOrder = 0
    OnClick = ButtonPreviewClick
  end
  object ButtonFormat: TButton
    Left = 96
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Format'
    TabOrder = 1
    OnClick = ButtonFormatClick
  end
  object ButtonDisplay: TButton
    Left = 184
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Display'
    TabOrder = 2
    OnClick = ButtonDisplayClick
  end
  object CheckBoxScale: TCheckBox
    Left = 8
    Top = 104
    Width = 153
    Height = 17
    Caption = 'Preview Scale to Window'
    TabOrder = 3
    OnClick = CheckBoxScaleClick
  end
  object CheckBoxProportional: TCheckBox
    Left = 8
    Top = 128
    Width = 153
    Height = 17
    Caption = 'Preview Scale Proportional'
    TabOrder = 4
    OnClick = CheckBoxProportionalClick
  end
  object EditFPS: TEdit
    Left = 240
    Top = 112
    Width = 41
    Height = 25
    ReadOnly = True
    TabOrder = 5
    Text = '15'
  end
  object UpDownFPS: TUpDown
    Left = 281
    Top = 112
    Width = 16
    Height = 25
    Associate = EditFPS
    Min = 1
    Max = 30
    Position = 15
    TabOrder = 6
    OnChanging = UpDownFPSChanging
  end
  object VideoCap1: TVideoCap
    Left = 8
    Top = 152
    Width = 320
    Height = 240
    color = clBlack
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
    OnStatus = VideoCap1Status
  end
end
