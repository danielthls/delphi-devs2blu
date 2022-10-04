object FormConsumoEnergia: TFormConsumoEnergia
  Left = 0
  Top = 0
  Caption = 'FormConsumoEnergia'
  ClientHeight = 232
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
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
  object lb_kwh: TLabel
    Left = 114
    Top = 62
    Width = 26
    Height = 13
    Caption = 'KW/h'
  end
  object edtConsumo: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object RGTipo: TRadioGroup
    Left = 24
    Top = 88
    Width = 121
    Height = 113
    Caption = 'Tipo de consumidor'
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria'
      'Fazenda')
    TabOrder = 1
  end
  object btnConta: TButton
    Left = 218
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnContaClick
  end
end
