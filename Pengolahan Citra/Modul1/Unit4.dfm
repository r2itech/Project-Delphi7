object Form4: TForm4
  Left = 195
  Top = 153
  Width = 303
  Height = 291
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 35
    Height = 13
    Caption = 'HARGA'
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object Label4: TLabel
    Left = 24
    Top = 144
    Width = 33
    Height = 13
    Caption = 'BAYAR'
  end
  object Label5: TLabel
    Left = 24
    Top = 112
    Width = 68
    Height = 13
    Caption = 'TOTAL BAYAR'
  end
  object Label6: TLabel
    Left = 24
    Top = 176
    Width = 42
    Height = 13
    Caption = 'KEMBALI'
  end
  object Button1: TButton
    Left = 192
    Top = 224
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 144
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 144
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 144
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 144
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 144
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
