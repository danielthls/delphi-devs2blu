object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 367
  ClientWidth = 428
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
    Left = 32
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 32
    Top = 107
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Label3: TLabel
    Left = 32
    Top = 168
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object lblIdade: TLabel
    Left = 32
    Top = 240
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object edtNome: TEdit
    Left = 32
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 104
    Width = 1
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object edtNascimento: TEdit
    Left = 32
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtAltura: TEdit
    Left = 32
    Top = 187
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 256
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Calcular Idade'
    TabOrder = 4
    OnClick = Button1Click
  end
end
