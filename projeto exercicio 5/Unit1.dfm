object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
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
    Left = 24
    Top = 32
    Width = 72
    Height = 13
    Caption = 'Nome do Aluno'
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 63
    Height = 13
    Caption = 'Nota Prova 1'
  end
  object Label3: TLabel
    Left = 24
    Top = 142
    Width = 63
    Height = 13
    Caption = 'Nota Prova 2'
  end
  object Label4: TLabel
    Left = 24
    Top = 188
    Width = 63
    Height = 13
    Caption = 'Nota Prova 3'
  end
  object Label5: TLabel
    Left = 200
    Top = 32
    Width = 34
    Height = 13
    Caption = 'Boletim'
  end
  object edtNome: TEdit
    Left = 24
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtProva1: TEdit
    Left = 24
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtProva2: TEdit
    Left = 24
    Top = 161
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtProva3: TEdit
    Left = 24
    Top = 207
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object mmBoletim: TMemo
    Left = 200
    Top = 51
    Width = 185
    Height = 89
    TabOrder = 4
  end
  object btnMedia: TButton
    Left = 200
    Top = 183
    Width = 81
    Height = 25
    Caption = 'Calcular M'#233'dia'
    TabOrder = 5
    OnClick = btnMediaClick
  end
end
