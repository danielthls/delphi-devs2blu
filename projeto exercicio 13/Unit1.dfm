object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 180
  ClientWidth = 187
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
    Top = 16
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object edtNumero: TEdit
    Left = 32
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnMaior: TButton
    Left = 48
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Maior que 10?'
    TabOrder = 1
    OnClick = btnMaiorClick
  end
end
