object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  Caption = 'frmCompradores'
  ClientHeight = 313
  ClientWidth = 598
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
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 136
    Width = 29
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit5
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 179
    Width = 567
    Height = 120
    DataSource = DataSource2
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
        FieldName = 'Nome'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Width = 150
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 75
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 112
    Width = 255
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource2
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 152
    Width = 255
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource2
    TabOrder = 4
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'dvs2blu.comprador'
    Left = 432
    Top = 56
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTable1Cargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTable1
    Left = 496
    Top = 56
  end
end
