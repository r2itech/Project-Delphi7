object Form1: TForm1
  Left = 370
  Top = 164
  Width = 928
  Height = 540
  Caption = 'Algoritma Garis'
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
  object Label1: TLabel
    Left = 552
    Top = 0
    Width = 356
    Height = 13
    Caption = 
      'Manggambar Garis Menggunakan Algoritma DDA, Bresenham, dan Polin' +
      'om'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 352
    Width = 281
    Height = 129
    Caption = 'DDA dan Bresenham'
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 13
      Height = 13
      Caption = 'X1'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 13
      Height = 13
      Caption = 'Y1'
    end
    object Label4: TLabel
      Left = 144
      Top = 32
      Width = 13
      Height = 13
      Caption = 'X2'
    end
    object Label5: TLabel
      Left = 144
      Top = 96
      Width = 13
      Height = 13
      Caption = 'Y2'
    end
    object edX1: TEdit
      Left = 64
      Top = 32
      Width = 65
      Height = 21
      TabOrder = 0
      OnChange = edX1Change
    end
    object edY1: TEdit
      Left = 64
      Top = 96
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edX2: TEdit
      Left = 184
      Top = 32
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edY2: TEdit
      Left = 184
      Top = 96
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 3
      OnChange = edY2Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 312
    Top = 352
    Width = 281
    Height = 129
    Caption = 'Polinom'
    TabOrder = 1
    object Label6: TLabel
      Left = 16
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Xawal'
    end
    object Label7: TLabel
      Left = 16
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Xakhir'
    end
    object Label8: TLabel
      Left = 144
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Nilai A ='
    end
    object Label9: TLabel
      Left = 144
      Top = 96
      Width = 39
      Height = 13
      Caption = 'Nilai B ='
    end
    object edXawal: TEdit
      Left = 56
      Top = 24
      Width = 65
      Height = 21
      TabOrder = 0
      OnChange = edXawalChange
    end
    object edXakhir: TEdit
      Left = 56
      Top = 96
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edA: TEdit
      Left = 184
      Top = 24
      Width = 73
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edB: TEdit
      Left = 184
      Top = 96
      Width = 73
      Height = 21
      Enabled = False
      TabOrder = 3
      OnChange = edBChange
    end
  end
  object DDA: TButton
    Left = 616
    Top = 384
    Width = 75
    Height = 25
    Caption = 'DDA'
    Enabled = False
    TabOrder = 2
    OnClick = DDAClick
  end
  object Bresenham: TButton
    Left = 616
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Bresenham'
    Enabled = False
    TabOrder = 3
    OnClick = BresenhamClick
  end
  object Polinom: TButton
    Left = 720
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Polinom'
    Enabled = False
    TabOrder = 4
    OnClick = PolinomClick
  end
  object Ulang: TButton
    Left = 720
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Ulang'
    TabOrder = 5
    OnClick = UlangClick
  end
  object Keluar: TButton
    Left = 824
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = KeluarClick
  end
  object MainMenu1: TMainMenu
    object File1: TMenuItem
      Caption = 'File'
      object Ulang1: TMenuItem
        Caption = 'Ulang'
        OnClick = Ulang1Click
      end
      object Keluar1: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar1Click
      end
    end
    object Proses1: TMenuItem
      Caption = 'Proses'
      object DDA1: TMenuItem
        Caption = 'DDA'
        OnClick = DDA1Click
      end
      object Bresenham1: TMenuItem
        Caption = 'Bresenham'
        OnClick = Bresenham1Click
      end
      object Polinom1: TMenuItem
        Caption = 'Polinom'
        OnClick = Polinom1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      object AboutApplication1: TMenuItem
        Caption = 'About Application'
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
