object Form5: TForm5
  Left = 587
  Top = 175
  Anchors = []
  BorderStyle = bsNone
  Caption = 'Form5'
  ClientHeight = 169
  ClientWidth = 407
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    407
    169)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 395
    Height = 156
    Anchors = []
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 45
      Top = 21
      Width = 314
      Height = 20
      Caption = 'APAKAH ANDA YAKIN MAU KELUAR?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = 20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 117
      Top = 109
      Width = 26
      Height = 20
      Caption = 'NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = 20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label2Click
    end
    object Label4: TLabel
      Left = 253
      Top = 109
      Width = 37
      Height = 20
      Caption = 'YES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = 20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label4Click
    end
  end
end
