object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 399
  ClientWidth = 418
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
    Top = 85
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object I: TLabel
    Left = 40
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label2: TLabel
    Left = 200
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object edtIdade: TEdit
    Left = 40
    Top = 43
    Width = 121
    Height = 21
    ImeName = 'edtQtdPessoas'
    TabOrder = 0
  end
  object btnIncluir: TButton
    Left = 56
    Top = 320
    Width = 105
    Height = 25
    Caption = 'Incluir pessoas'
    TabOrder = 1
    OnClick = btnIncluirClick
  end
  object btnListar: TButton
    Left = 200
    Top = 320
    Width = 97
    Height = 25
    Caption = 'Listar Pessoas'
    TabOrder = 2
    OnClick = btnListarClick
  end
  object edtNome: TEdit
    Left = 200
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object mmResultado: TMemo
    Left = 40
    Top = 112
    Width = 281
    Height = 169
    TabOrder = 4
  end
end
