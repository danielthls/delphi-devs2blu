object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 232
  ClientWidth = 379
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
    Top = 32
    Width = 44
    Height = 13
    Caption = 'Consumo'
  end
  object Label2: TLabel
    Left = 224
    Top = 144
    Width = 69
    Height = 13
    Caption = 'Valor da conta'
  end
  object lblTotal: TLabel
    Left = 224
    Top = 163
    Width = 38
    Height = 13
    Caption = 'R$ 0,00'
  end
  object edtConsumo: TEdit
    Left = 24
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object RGTipo: TRadioGroup
    Left = 24
    Top = 96
    Width = 121
    Height = 105
    Caption = 'Tipo de consumidor'
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria')
    TabOrder = 1
  end
  object btnConta: TButton
    Left = 218
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnContaClick
  end
end
