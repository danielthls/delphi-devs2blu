object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 319
  ClientWidth = 456
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
    Left = 40
    Top = 32
    Width = 86
    Height = 13
    Caption = 'Valor em D'#243'lar ($)'
  end
  object Label2: TLabel
    Left = 248
    Top = 32
    Width = 89
    Height = 13
    Caption = 'Valor em Real (R$)'
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 117
    Height = 13
    Caption = 'Cota'#231#227'o D'#243'lar para Real'
  end
  object edtDolar: TEdit
    Left = 40
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtReal: TEdit
    Left = 248
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtCotacao: TEdit
    Left = 40
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 248
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
