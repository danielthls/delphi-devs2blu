object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  Caption = 'Fornecedores'
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
    Top = 64
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 144
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 230
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 457
    Height = 174
    DataSource = DataSource1
    TabOrder = 1
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
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 80
    Width = 100
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 120
    Width = 200
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 160
    Width = 200
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 384
    Top = 120
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'fornecedor'
    Left = 384
    Top = 64
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDTable1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
end
