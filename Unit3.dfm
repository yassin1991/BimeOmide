object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 331
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 104
    Top = 24
    Width = 473
    Height = 176
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
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 488
    Top = 240
    Width = 89
    Height = 49
    Caption = 'Button1'
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 64
    Top = 120
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 120
    Top = 152
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Database=bime'
      'Password=msyhds91ba'
      'Server=localhost'
      'ConnectionDef=postgre')
    Connected = True
    Left = 224
    Top = 168
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'person_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'person'
    CatalogName = 'bime'
    TableName = 'person'
    Left = 352
    Top = 184
  end
end
