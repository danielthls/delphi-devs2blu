object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 399
  ClientWidth = 609
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
    Width = 104
    Height = 13
    Caption = 'Nome do Computador'
  end
  object Label2: TLabel
    Left = 24
    Top = 70
    Width = 80
    Height = 13
    Caption = 'Nome do usu'#225'rio'
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 96
    Height = 13
    Caption = 'Diret'#243'rio do Sistema'
  end
  object Label4: TLabel
    Left = 24
    Top = 184
    Width = 102
    Height = 13
    Caption = 'Diret'#243'rio do Windows'
  end
  object Label5: TLabel
    Left = 24
    Top = 240
    Width = 84
    Height = 13
    Caption = 'Pasta Tempor'#225'ria'
  end
  object Label6: TLabel
    Left = 24
    Top = 296
    Width = 94
    Height = 13
    Caption = 'Vers'#227'o do Windows'
  end
  object edtNomePC: TEdit
    Left = 24
    Top = 35
    Width = 553
    Height = 21
    TabOrder = 0
  end
  object edtNomeUser: TEdit
    Left = 24
    Top = 89
    Width = 553
    Height = 21
    TabOrder = 1
  end
  object edtDirSistema: TEdit
    Left = 24
    Top = 147
    Width = 553
    Height = 21
    TabOrder = 2
  end
  object edtDirWindows: TEdit
    Left = 24
    Top = 203
    Width = 553
    Height = 21
    TabOrder = 3
  end
  object edtDirTemp: TEdit
    Left = 24
    Top = 259
    Width = 553
    Height = 21
    TabOrder = 4
  end
  object edtVersaoWindows: TEdit
    Left = 24
    Top = 315
    Width = 553
    Height = 21
    TabOrder = 5
  end
  object btnInformacoes: TButton
    Left = 256
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Informa'#231#245'es'
    TabOrder = 6
    OnClick = btnInformacoesClick
  end
end
