object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 377
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 83
    Height = 13
    Caption = 'Nome do produto'
  end
  object Label2: TLabel
    Left = 168
    Top = 24
    Width = 71
    Height = 13
    Caption = 'Pre'#231'o de custo'
  end
  object Label3: TLabel
    Left = 288
    Top = 24
    Width = 75
    Height = 13
    Caption = 'Pre'#231'o de venda'
  end
  object Label4: TLabel
    Left = 392
    Top = 99
    Width = 72
    Height = 13
    Caption = 'M'#233'dia de custo'
  end
  object lblCusto: TLabel
    Left = 392
    Top = 118
    Width = 38
    Height = 13
    Caption = 'R$ 0,00'
  end
  object Label6: TLabel
    Left = 392
    Top = 160
    Width = 76
    Height = 13
    Caption = 'M'#233'dia de venda'
  end
  object lblVenda: TLabel
    Left = 392
    Top = 179
    Width = 38
    Height = 13
    Caption = 'R$ 0,00'
  end
  object edtNome: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtCusto: TEdit
    Left = 168
    Top = 43
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object edtVenda: TEdit
    Left = 288
    Top = 43
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object mmResultado: TMemo
    Left = 24
    Top = 88
    Width = 353
    Height = 129
    TabOrder = 3
  end
  object btnCalcular: TButton
    Left = 164
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btnCalcularClick
  end
end
