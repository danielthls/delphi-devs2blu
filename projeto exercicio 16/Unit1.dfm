object Joa: TJoa
  Left = 0
  Top = 0
  Caption = 'Joa'
  ClientHeight = 281
  ClientWidth = 515
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
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Nota 1'
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 32
    Height = 13
    Caption = 'Nota 2'
  end
  object Label4: TLabel
    Left = 24
    Top = 198
    Width = 32
    Height = 13
    Caption = 'Nota 3'
  end
  object edtNome: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNota1: TEdit
    Left = 24
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNota2: TEdit
    Left = 24
    Top = 171
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtNota3: TEdit
    Left = 24
    Top = 217
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnMedia: TButton
    Left = 240
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Calcular m'#233'dia'
    TabOrder = 4
    OnClick = btnMediaClick
  end
  object mmResultado: TMemo
    Left = 184
    Top = 123
    Width = 289
    Height = 115
    Lines.Strings = (
      '')
    TabOrder = 5
  end
end
