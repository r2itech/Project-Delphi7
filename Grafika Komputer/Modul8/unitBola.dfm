object Form1: TForm1
  Left = 532
  Top = 233
  Width = 767
  Height = 453
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 448
    Top = 360
    Width = 52
    Height = 13
    Caption = 'Kecepatan'
  end
  object Button1: TButton
    Left = 680
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Mulai'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 600
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Berhenti'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Selesai'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Sb_Cepat: TScrollBar
    Left = 512
    Top = 360
    Width = 241
    Height = 17
    Min = 1
    PageSize = 0
    Position = 1
    TabOrder = 3
    OnChange = Sb_CepatChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 345
    BevelInner = bvLowered
    Color = clTeal
    TabOrder = 4
    object Bola: TShape
      Left = 352
      Top = 160
      Width = 50
      Height = 50
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 50
      Shape = stCircle
    end
    object k1: TShape
      Left = 352
      Top = 160
      Width = 25
      Height = 25
      Brush.Color = clSilver
      Pen.Color = clGray
      Pen.Style = psClear
    end
    object k3: TShape
      Left = 376
      Top = 160
      Width = 27
      Height = 25
      Brush.Color = clSilver
      Pen.Color = clGray
      Pen.Style = psClear
    end
    object k4: TShape
      Left = 376
      Top = 184
      Width = 27
      Height = 27
      Brush.Color = clSilver
      Pen.Color = clGray
      Pen.Style = psClear
    end
    object k2: TShape
      Left = 352
      Top = 184
      Width = 25
      Height = 27
      Brush.Color = clSilver
      Pen.Color = clGray
      Pen.Style = psClear
    end
  end
  object Button4: TButton
    Left = 520
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Restart'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 720
    Top = 312
  end
end
