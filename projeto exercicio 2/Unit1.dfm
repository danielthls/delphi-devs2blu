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
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 152
    Width = 72
    Height = 16
    Caption = 'Resultados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSoma: TLabel
    Left = 34
    Top = 184
    Width = 119
    Height = 13
    Caption = 'Soma: '
  end
  object lblSubtracao: TLabel
    Left = 34
    Top = 203
    Width = 119
    Height = 14
    Caption = 'Subtra'#231#227'o:'
  end
  object lblMultiplicacao: TLabel
    Left = 34
    Top = 223
    Width = 60
    Height = 13
    Caption = 'Multiplica'#231#227'o'
  end
  object lblDivisao: TLabel
    Left = 34
    Top = 242
    Width = 34
    Height = 13
    Caption = 'Divis'#227'o'
  end
  object edtValor1: TEdit
    Left = 32
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 32
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 208
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
