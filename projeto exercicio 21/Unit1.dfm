object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 451
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 94
    Height = 13
    Caption = 'N'#250'mero de pessoas'
  end
  object Label2: TLabel
    Left = 408
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 408
    Top = 76
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label4: TLabel
    Left = 24
    Top = 133
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtQtdPessoas: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 408
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object RGSexo: TRadioGroup
    Left = 176
    Top = 24
    Width = 73
    Height = 73
    Caption = 'Sexo'
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 2
  end
  object RGSaude: TRadioGroup
    Left = 279
    Top = 24
    Width = 90
    Height = 73
    Caption = 'Sa'#250'de'
    Items.Strings = (
      'Saud'#225'vel'
      'Debilitada')
    TabOrder = 3
  end
  object edtIdade: TEdit
    Left = 408
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object mmResultado: TMemo
    Left = 24
    Top = 160
    Width = 569
    Height = 201
    Enabled = False
    TabOrder = 5
  end
  object btnIncluir: TButton
    Left = 144
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 6
    OnClick = btnIncluirClick
  end
end
