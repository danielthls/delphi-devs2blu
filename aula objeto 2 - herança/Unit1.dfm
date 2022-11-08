object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 153
  ClientWidth = 205
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
    Width = 31
    Height = 13
    Caption = 'Animal'
  end
  object cmbAnimal: TComboBox
    Left = 32
    Top = 59
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
  object btnSom: TButton
    Left = 32
    Top = 86
    Width = 145
    Height = 25
    Caption = 'Que som eu fa'#231'o?'
    TabOrder = 1
    OnClick = btnSomClick
  end
end
