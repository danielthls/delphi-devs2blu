object dmPedidos: TdmPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 171
  Width = 231
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=dvs2blu'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 80
    Top = 40
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\dtlsilva\Documents\delphi-devs2blu\aula sql delphi 1\li' +
      'bmysql.dll'
    Left = 128
    Top = 104
  end
end
