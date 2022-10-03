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
    Width = 68
    Height = 13
    Caption = 'Valor de custo'
  end
  object TLabel
    Left = 200
    Top = 24
    Width = 87
    Height = 13
    Caption = 'Acr'#233'scimo (em %)'
  end
  object Label2: TLabel
    Left = 32
    Top = 144
    Width = 72
    Height = 13
    Caption = 'Valor de venda'
  end
  object edtCusto: TEdit
    Left = 32
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtAcrescimo: TEdit
    Left = 200
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtVenda: TEdit
    Left = 32
    Top = 163
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 216
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
