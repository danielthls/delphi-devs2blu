object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Combust'#237'vel'
  ClientHeight = 448
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 24
    Width = 67
    Height = 13
    Caption = 'Valor por Litro'
  end
  object Label2: TLabel
    Left = 24
    Top = 24
    Width = 96
    Height = 13
    Caption = 'Tipo de Combust'#237'vel'
  end
  object Label3: TLabel
    Left = 256
    Top = 24
    Width = 147
    Height = 13
    Caption = 'Quantidade de litros na bomba'
  end
  object lblTipo: TLabel
    Left = 24
    Top = 43
    Width = 30
    Height = 13
    Caption = 'lblTipo'
  end
  object lblValor: TLabel
    Left = 152
    Top = 43
    Width = 34
    Height = 13
    Caption = 'lblValor'
  end
  object lblQtd: TLabel
    Left = 256
    Top = 43
    Width = 28
    Height = 13
    Caption = 'lblQtd'
  end
  object Label4: TLabel
    Left = 8
    Top = 133
    Width = 41
    Height = 13
    Caption = 'Hist'#243'rico'
  end
  object btnValor: TButton
    Left = 56
    Top = 80
    Width = 121
    Height = 41
    Caption = 'Abastecer por Valor'
    TabOrder = 0
    OnClick = btnValorClick
  end
  object btnLitro: TButton
    Left = 200
    Top = 80
    Width = 121
    Height = 41
    Caption = 'Abastecer por Litro'
    TabOrder = 1
    OnClick = btnLitroClick
  end
  object mmHistorico: TMemo
    Left = 8
    Top = 152
    Width = 441
    Height = 161
    TabOrder = 2
  end
  object btnATipo: TButton
    Left = 8
    Top = 336
    Width = 162
    Height = 25
    Caption = 'Alterar Tipo de Combust'#237'vel'
    TabOrder = 3
    OnClick = btnATipoClick
  end
  object btbAValor: TButton
    Left = 8
    Top = 398
    Width = 162
    Height = 25
    Caption = 'Alterar Valor por Litro'
    TabOrder = 4
    OnClick = btbAValorClick
  end
  object btnAQTd: TButton
    Left = 8
    Top = 367
    Width = 162
    Height = 25
    Caption = 'Alterar Quantidade de Litros'
    TabOrder = 5
    OnClick = btnAQTdClick
  end
end
