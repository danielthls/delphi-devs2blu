object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 348
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
    Left = 64
    Top = 89
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label2: TLabel
    Left = 64
    Top = 32
    Width = 115
    Height = 13
    Caption = 'Quantidade de n'#250'meros'
  end
  object mmResultado: TMemo
    Left = 64
    Top = 108
    Width = 265
    Height = 150
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 144
    Top = 272
    Width = 113
    Height = 25
    Caption = 'Informar n'#250'meros'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtTotalNumeros: TEdit
    Left = 64
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
