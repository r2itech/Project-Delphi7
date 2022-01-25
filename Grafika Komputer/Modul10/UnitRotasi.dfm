object Form1: TForm1
  Left = 355
  Top = 223
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 409
    TabOrder = 0
    object Shape1: TShape
      Left = 512
      Top = 136
      Width = 65
      Height = 60
      Brush.Color = clYellow
      Shape = stCircle
    end
    object orbit1: TShape
      Left = 400
      Top = 80
      Width = 281
      Height = 177
      Brush.Style = bsClear
      Shape = stEllipse
    end
    object biru: TShape
      Left = 376
      Top = 112
      Width = 65
      Height = 35
      Brush.Color = clBlue
      Shape = stCircle
    end
  end
  object Button1: TButton
    Left = 8
    Top = 440
    Width = 81
    Height = 25
    Caption = 'Mulai'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Berhenti'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 992
    Top = 376
  end
end
