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
    Top = 40
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 232
    Top = 40
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object edtValor1: TEdit
    Left = 32
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 232
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnComparar: TButton
    Left = 144
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Comparar'
    TabOrder = 2
    OnClick = btnCompararClick
  end
end
