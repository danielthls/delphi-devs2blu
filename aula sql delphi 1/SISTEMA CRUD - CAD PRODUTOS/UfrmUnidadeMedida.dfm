object frmUnidadeMedida: TfrmUnidadeMedida
  Left = 0
  Top = 0
  Caption = 'frmUnidadeMedida'
  ClientHeight = 406
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 80
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 457
    Height = 174
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 96
    Width = 100
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 136
    Width = 200
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 400
    Top = 104
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'unidademedida'
    Left = 400
    Top = 48
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
end
