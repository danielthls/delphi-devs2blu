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
    Left = 56
    Top = 61
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object edtNumero: TEdit
    Left = 56
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnExtenso: TButton
    Left = 240
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Extenso'
    TabOrder = 1
    OnClick = btnExtensoClick
  end
end
