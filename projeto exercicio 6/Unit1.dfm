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
    Left = 32
    Top = 24
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label3: TLabel
    Left = 32
    Top = 192
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtA: TEdit
    Left = 32
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtB: TEdit
    Left = 32
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtResultado: TEdit
    Left = 32
    Top = 211
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnInverte: TButton
    Left = 32
    Top = 142
    Width = 97
    Height = 25
    Caption = 'Inverte Valores'
    TabOrder = 3
    OnClick = btnInverteClick
  end
end
