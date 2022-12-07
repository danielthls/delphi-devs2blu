object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 451
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 192
    Top = 24
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object edtNome: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNasc: TEdit
    Left = 192
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object mmLista: TMemo
    Left = 24
    Top = 80
    Width = 289
    Height = 289
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 24
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 238
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Ler'
    TabOrder = 4
    OnClick = btnLerClick
  end
end
