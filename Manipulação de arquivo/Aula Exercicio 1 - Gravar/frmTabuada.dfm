object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 108
  ClientWidth = 142
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
    Top = 8
    Width = 94
    Height = 13
    Caption = 'Informe um n'#250'mero'
  end
  object edtNumero: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnTabuada: TButton
    Left = 8
    Top = 54
    Width = 121
    Height = 25
    Caption = 'Tabuada'
    TabOrder = 1
    OnClick = btnTabuadaClick
  end
end
