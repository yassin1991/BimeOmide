object DataModule5: TDataModule5
  OldCreateOrder = False
  Height = 642
  Width = 514
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 56
    Top = 16
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'bime'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True')
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 176
    Top = 16
    EncryptedPassword = '8DFF90FF90FF8BFF'
  end
  object PersonUniDataSource: TUniDataSource
    DataSet = PersonUniTable
    Left = 48
    Top = 120
  end
  object PersonUniTable: TUniTable
    TableName = 'person'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 64
  end
  object PatientUniTable: TUniTable
    TableName = 'patient'
    Connection = UniConnection1
    Active = True
    Left = 48
    Top = 176
  end
  object PatientUniDataSource: TUniDataSource
    DataSet = PatientUniTable
    Left = 48
    Top = 240
  end
  object FileUniTable: TUniTable
    TableName = 'file'
    Connection = UniConnection1
    Active = True
    Left = 176
    Top = 64
  end
  object FileUniDataSource: TUniDataSource
    DataSet = FileUniTable
    Left = 176
    Top = 128
  end
  object FolderNameUniTable: TUniTable
    TableName = 'folder_name'
    Connection = UniConnection1
    Active = True
    Left = 176
    Top = 184
  end
  object FolderNameUniDataSource: TUniDataSource
    DataSet = FolderNameUniTable
    Left = 176
    Top = 240
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 280
    Top = 120
  end
  object MainViewUniTable: TUniTable
    TableName = 'main_view'
    Connection = UniConnection1
    Active = True
    Left = 48
    Top = 312
  end
  object MainViewUniDataSource: TUniDataSource
    DataSet = MainViewUniTable
    Left = 176
    Top = 312
  end
  object BayganiUniQuery: TUniQuery
    Connection = UniConnection1
    Left = 40
    Top = 392
  end
  object UniDataSource1: TUniDataSource
    DataSet = BayganiUniQuery
    Left = 176
    Top = 392
  end
  object Baygani_Folder: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from main_view')
    Active = True
    Left = 392
    Top = 96
  end
  object Baygani_folderDataSource: TUniDataSource
    DataSet = Baygani_Folder
    Left = 400
    Top = 256
  end
end
