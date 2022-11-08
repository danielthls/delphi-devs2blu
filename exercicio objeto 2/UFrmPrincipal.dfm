object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 411
  ClientWidth = 676
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
    Left = 24
    Top = 24
    Width = 76
    Height = 13
    Caption = 'Nome do cliente'
  end
  object lblNome: TLabel
    Left = 24
    Top = 43
    Width = 37
    Height = 13
    Caption = 'lblNome'
    Visible = False
  end
  object Label2: TLabel
    Left = 144
    Top = 24
    Width = 44
    Height = 13
    Caption = 'Conta N'#186
  end
  object lblNumeroConta: TLabel
    Left = 144
    Top = 43
    Width = 76
    Height = 13
    Caption = 'lblNumeroConta'
    Visible = False
  end
  object Label3: TLabel
    Left = 264
    Top = 24
    Width = 54
    Height = 13
    Caption = 'Saldo Atual'
  end
  object lblSaldo: TLabel
    Left = 264
    Top = 43
    Width = 36
    Height = 13
    Caption = 'lblSaldo'
    Visible = False
  end
  object btnAlteraNome: TButton
    Left = 168
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Alterar Nome'
    TabOrder = 0
    OnClick = btnAlteraNomeClick
  end
  object btnDeposito: TButton
    Left = 353
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Dep'#243'sito'
    TabOrder = 1
    OnClick = btnDepositoClick
  end
  object btnSaque: TButton
    Left = 486
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Saque'
    TabOrder = 2
    OnClick = btnSaqueClick
  end
  object btnNovaConta: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Nova Conta'
    TabOrder = 3
    OnClick = btnNovaContaClick
  end
  object mmHistorico: TMemo
    Left = 24
    Top = 88
    Width = 644
    Height = 209
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
