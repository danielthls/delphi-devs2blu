object frmElevador: TfrmElevador
  Left = 0
  Top = 0
  Caption = 'Painel Elevador'
  ClientHeight = 198
  ClientWidth = 386
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
  object TLabel
    Left = 24
    Top = 24
    Width = 83
    Height = 13
    Caption = 'Capacidade Total'
  end
  object Label1: TLabel
    Left = 128
    Top = 24
    Width = 95
    Height = 13
    Caption = 'N'#250'mero de Andares'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 154
    Height = 13
    Caption = 'N'#250'mero de Pessoas no elevador'
  end
  object Label3: TLabel
    Left = 24
    Top = 125
    Width = 56
    Height = 13
    Caption = 'Andar atual'
  end
  object lblCapacidade: TLabel
    Left = 24
    Top = 43
    Width = 66
    Height = 13
    Caption = 'lblCapacidade'
  end
  object lblAndares: TLabel
    Left = 128
    Top = 43
    Width = 50
    Height = 13
    Caption = 'lblAndares'
  end
  object lblNumeroPessoas: TLabel
    Left = 24
    Top = 99
    Width = 86
    Height = 13
    Caption = 'lblNumeroPessoas'
  end
  object lblAndarAtual: TLabel
    Left = 24
    Top = 144
    Width = 64
    Height = 13
    Caption = 'lblAndarAtual'
  end
  object btnSobe: TButton
    Left = 279
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Sobe'
    TabOrder = 0
    OnClick = btnSobeClick
  end
  object btnDesce: TButton
    Left = 279
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Desce'
    TabOrder = 1
    OnClick = btnDesceClick
  end
  object btnEntra: TButton
    Left = 279
    Top = 107
    Width = 75
    Height = 25
    Caption = 'Entra'
    TabOrder = 2
    OnClick = btnEntraClick
  end
  object btnSai: TButton
    Left = 279
    Top = 138
    Width = 75
    Height = 25
    Caption = 'Sai'
    TabOrder = 3
    OnClick = btnSaiClick
  end
end
