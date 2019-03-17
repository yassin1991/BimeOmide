object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 322
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 424
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 631
    Height = 120
    DataSource = UniDataSource1
    DynProps = <>
    TabOrder = 1
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'postgreSQL'
    Port = 5432
    Database = 'bime'
    SpecificOptions.Strings = (
      'postgreSQL.UseUnicode=True')
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    Left = 136
    Top = 104
    EncryptedPassword = '92FF8CFF86FF97FF9BFF8CFFC6FFCEFF9DFF9EFF'
  end
  object UniTable1: TUniTable
    TableName = 'person'
    Connection = UniConnection1
    Active = True
    Left = 384
    Top = 168
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 528
    Top = 200
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 272
    Top = 160
  end
end
