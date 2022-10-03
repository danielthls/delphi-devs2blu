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
    Top = 32
    Width = 98
    Height = 13
    Caption = 'Temperatura Celsius'
  end
  object Label2: TLabel
    Left = 208
    Top = 32
    Width = 52
    Height = 13
    Caption = 'Farhenheit'
  end
  object edtCelsius: TEdit
    Left = 32
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtFarenheit: TEdit
    Left = 208
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnConverte: TButton
    Left = 115
    Top = 104
    Width = 145
    Height = 41
    Caption = 'Converter '#186'C para '#186'F'
    TabOrder = 2
    OnClick = btnConverteClick
  end
end
