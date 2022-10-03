object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 268
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
    Left = 24
    Top = 32
    Width = 91
    Height = 13
    Caption = 'Nome do vendedor'
  end
  object Label2: TLabel
    Left = 24
    Top = 124
    Width = 103
    Height = 13
    Caption = 'Total vendas (em R$)'
  end
  object Label3: TLabel
    Left = 24
    Top = 78
    Width = 58
    Height = 13
    Caption = 'Sal'#225'rio Base'
  end
  object Label4: TLabel
    Left = 232
    Top = 40
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
  object lblNome: TLabel
    Left = 232
    Top = 78
    Width = 34
    Height = 13
    Caption = 'Nome: '
  end
  object lblSalarioFixo: TLabel
    Left = 232
    Top = 97
    Width = 60
    Height = 13
    Caption = 'Salario fixo: '
  end
  object lblSalarioTotal: TLabel
    Left = 232
    Top = 116
    Width = 61
    Height = 13
    Caption = 'Salario total:'
  end
  object edtNome: TEdit
    Left = 24
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtVendas: TEdit
    Left = 24
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSalario: TEdit
    Left = 24
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 24
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
