object Form1: TForm1
  Left = 284
  Top = 163
  Width = 1044
  Height = 540
  Caption = 'Perkembangan Jumlah Mahasiswa UNIKU'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 505
    Color = clActiveCaption
    TabOrder = 0
    object Panel2: TPanel
      Left = 24
      Top = 16
      Width = 985
      Height = 449
      TabOrder = 0
      object DBChart1: TDBChart
        Left = 8
        Top = 8
        Width = 969
        Height = 433
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Perkembangan Jumlah Mahasiswa UNIKU')
        BottomAxis.ExactDateTime = False
        BottomAxis.Increment = 1.000000000000000000
        BottomAxis.Title.Caption = 'Tahun (20**)'
        LeftAxis.Title.Caption = 'Jumlah'
        TabOrder = 0
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Title = 'Laki-laki'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          Title = 'Perempuan'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object ButtonTampilkan: TBitBtn
      Left = 920
      Top = 472
      Width = 75
      Height = 25
      Caption = 'Tampilkan'
      TabOrder = 1
      OnClick = ButtonTampilkanClick
    end
    object Button1: TButton
      Left = 840
      Top = 472
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 32
    Top = 472
  end
end
