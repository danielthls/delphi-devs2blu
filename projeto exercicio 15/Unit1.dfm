object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 166
  ClientWidth = 201
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
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object edtValor: TEdit
    Left = 40
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 64
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Comparar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
