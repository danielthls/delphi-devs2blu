object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 338
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
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 176
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object edtValor1: TEdit
    Left = 40
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 176
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnComparar: TButton
    Left = 120
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Comparar'
    TabOrder = 2
    OnClick = btnCompararClick
  end
end
