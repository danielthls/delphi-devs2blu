object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 484
  ClientWidth = 538
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
    Left = 8
    Top = 21
    Width = 134
    Height = 13
    Caption = 'Informe o nome do arquivo:'
  end
  object edtArquivo: TEdit
    Left = 8
    Top = 40
    Width = 521
    Height = 21
    TabOrder = 0
  end
  object btnLeitura: TButton
    Left = 8
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Ler Arquivo'
    TabOrder = 1
    OnClick = btnLeituraClick
  end
  object mmArquivo: TMemo
    Left = 8
    Top = 98
    Width = 521
    Height = 375
    TabOrder = 2
  end
end
