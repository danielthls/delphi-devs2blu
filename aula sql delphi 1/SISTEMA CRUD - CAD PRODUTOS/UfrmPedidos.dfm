object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 494
  ClientWidth = 623
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
    Top = 56
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 80
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 228
    Top = 56
    Width = 55
    Height = 13
    Caption = 'DataPedido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 101
    Width = 53
    Height = 13
    Caption = 'Comprador'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 16
    Top = 149
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = DBEdit2
  end
  object Label6: TLabel
    Left = 134
    Top = 224
    Width = 80
    Height = 13
    Caption = 'Itens de Pedidos'
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = dtsPedidoCompra
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 72
    Width = 50
    Height = 21
    DataField = 'Id'
    DataSource = dtsPedidoCompra
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 72
    Width = 134
    Height = 21
    DataField = 'Numero'
    DataSource = dtsPedidoCompra
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 228
    Top = 72
    Width = 134
    Height = 21
    DataField = 'DataPedido'
    DataSource = dtsPedidoCompra
    TabOrder = 3
  end
  object DBLookupComboBoxComprador: TDBLookupComboBox
    Left = 16
    Top = 120
    Width = 346
    Height = 21
    DataField = 'idComprador'
    DataSource = dtsPedidoCompra
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = dtsComprador
    TabOrder = 4
  end
  object DBLookupComboBoxFornecedor: TDBLookupComboBox
    Left = 16
    Top = 168
    Width = 346
    Height = 21
    DataField = 'idFornecedor'
    DataSource = dtsPedidoCompra
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = dtsFornecedor
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator
    Left = 352
    Top = 253
    Width = 25
    Height = 225
    DataSource = dtsItemCompra
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 253
    Width = 330
    Height = 225
    DataSource = dtsItemCompra
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'Id Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupProduto'
        Title.Caption = 'Descri'#231#227'o Produto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Width = 100
        Visible = True
      end>
  end
  object dtsPedidoCompra: TDataSource
    DataSet = PedidoCompra
    Left = 456
    Top = 32
  end
  object PedidoCompra: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'pedidocompra'
    Left = 544
    Top = 32
    object PedidoCompraId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PedidoCompraNumero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object PedidoCompraDataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object PedidoCompraidComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object PedidoCompraidFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object LookupComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'comprador'
    Left = 544
    Top = 112
  end
  object dtsComprador: TDataSource
    DataSet = LookupComprador
    Left = 456
    Top = 112
  end
  object dtsFornecedor: TDataSource
    DataSet = LookupFornecedor
    Left = 456
    Top = 176
  end
  object LookupFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'fornecedor'
    Left = 544
    Top = 176
  end
  object dtsItemCompra: TDataSource
    DataSet = ItemCompra
    Left = 472
    Top = 264
  end
  object ItemCompra: TFDTable
    BeforePost = ItemCompraBeforePost
    IndexFieldNames = 'Id'
    MasterSource = dtsPedidoCompra
    MasterFields = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'itemcompra'
    Left = 528
    Top = 240
    object ItemCompraId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ItemCompraQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object ItemCompraidPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object ItemCompraidProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object ItemCompraLookupProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupProduto'
      LookupDataSet = LookupProduto
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object LookupProduto: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'produto'
    Left = 528
    Top = 296
    object LookupProdutoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LookupProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object LookupProdutoidUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
  end
end
