object dmPedidos: TdmPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 343
  Width = 428
  object FDConexao: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=root'
      'Password=root'
      'Database=dvs2blu'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 240
    Top = 152
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\dtlsilva\Documents\delphi-devs2blu\aula sql delphi 1\SI' +
      'STEMA CRUD - CAD PRODUTOS\libmysql.dll'
    Left = 240
    Top = 216
  end
end
