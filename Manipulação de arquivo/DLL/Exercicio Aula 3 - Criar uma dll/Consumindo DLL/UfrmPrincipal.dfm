﻿object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consumindo DLL no Delphi'
  ClientHeight = 250
  ClientWidth = 306
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
    Left = 16
    Top = 16
    Width = 75
    Height = 13
    Caption = 'Digite um Texto'
  end
  object Número: TLabel
    Left = 16
    Top = 133
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label2: TLabel
    Left = 159
    Top = 133
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtTexto: TEdit
    Left = 16
    Top = 35
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edtNumero: TSpinEdit
    Left = 16
    Top = 152
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnMaiusculas: TButton
    Left = 16
    Top = 80
    Width = 137
    Height = 25
    Caption = 'Mai'#250'sculas'
    TabOrder = 2
    OnClick = btnMaiusculasClick
  end
  object btnMinusculas: TButton
    Left = 159
    Top = 80
    Width = 130
    Height = 25
    Caption = 'Min'#250'sculas'
    TabOrder = 3
    OnClick = btnMinusculasClick
  end
  object edtTextoConvertido: TEdit
    Left = 159
    Top = 152
    Width = 130
    Height = 21
    TabOrder = 4
  end
  object btnConverter: TButton
    Left = 115
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 5
    OnClick = btnConverterClick
  end
end
