object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Diario de Classe'
  ClientHeight = 425
  ClientWidth = 365
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
    Left = 16
    Top = 8
    Width = 72
    Height = 13
    Caption = 'Nome do Aluno'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 37
    Height = 13
    Caption = '1'#170' Nota'
  end
  object Label3: TLabel
    Left = 96
    Top = 64
    Width = 37
    Height = 13
    Caption = '2'#170' Nota'
  end
  object edtNome: TEdit
    Left = 16
    Top = 27
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object edtPrimeiraNota: TEdit
    Left = 16
    Top = 83
    Width = 72
    Height = 21
    TabOrder = 1
  end
  object edtSegundaNota: TEdit
    Left = 96
    Top = 83
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 189
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Gravar Aluno'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 270
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Ler Alunos'
    TabOrder = 4
    OnClick = btnLerClick
  end
  object mmDiario: TMemo
    Left = 16
    Top = 120
    Width = 329
    Height = 289
    TabOrder = 5
  end
end
