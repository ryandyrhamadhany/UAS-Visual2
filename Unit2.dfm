object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 189
  Top = 140
  Height = 210
  Width = 273
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Semester 4\8. Pemrograman Visual\libmysql.dll'
    Left = 56
    Top = 24
  end
  object ZKustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 136
    Top = 24
  end
  object DataKustomer: TDataSource
    DataSet = ZKustomer
    Left = 144
    Top = 96
  end
end
