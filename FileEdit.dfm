object FileEditForm: TFileEditForm
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1608#1740#1585#1575#1740#1588' '#1662#1585#1608#1606#1583#1607
  ClientHeight = 258
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 458
    Top = 32
    Width = 28
    Height = 13
    Caption = #1576#1740#1605#1575#1585' :'
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 222
    Top = 32
    Width = 52
    Height = 13
    Caption = #1606#1608#1593' '#1662#1585#1608#1606#1583#1607' :'
  end
  object Label3: TLabel
    Left = 873
    Top = 32
    Width = 48
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1576#1740#1605#1607' '#1711#1584#1575#1585' :'
    ParentBiDiMode = False
  end
  object Label4: TLabel
    Left = 654
    Top = 34
    Width = 36
    Height = 13
    Caption = #1606#1587#1576#1578' :'
  end
  object Label5: TLabel
    AlignWithMargins = True
    Left = 854
    Top = 69
    Width = 55
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1581#1575#1583#1579#1607' :'
  end
  object Label6: TLabel
    AlignWithMargins = True
    Left = 406
    Top = 69
    Width = 59
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1575#1585#1587#1575#1604' :'
  end
  object Label7: TLabel
    AlignWithMargins = True
    Left = 642
    Top = 69
    Width = 71
    Height = 13
    Caption = #1608#1590#1593#1740#1578' '#1662#1585#1608#1606#1583#1607' :'
  end
  object Label8: TLabel
    AlignWithMargins = True
    Left = 835
    Top = 112
    Width = 83
    Height = 13
    Caption = #1606#1575#1605' '#1662#1608#1588#1607' '#1576#1575#1740#1711#1575#1606#1740' :'
  end
  object Label9: TLabel
    AlignWithMargins = True
    Left = 579
    Top = 112
    Width = 65
    Height = 13
    Caption = #1583#1585#1589#1583' '#1594#1585#1575#1605#1578' :'
  end
  object Label10: TLabel
    AlignWithMargins = True
    Left = 191
    Top = 69
    Width = 61
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1583#1585#1740#1575#1601#1578' :'
  end
  object Label11: TLabel
    AlignWithMargins = True
    Left = 870
    Top = 152
    Width = 30
    Height = 13
    Caption = #1588#1585#1581' :'
  end
  object File_typeComboBox: TComboBox
    AlignWithMargins = True
    Left = 59
    Top = 29
    Width = 145
    Height = 21
    TabOrder = 3
    OnSelect = File_typeComboBoxSelect
  end
  object PersonComboBox: TComboBox
    Left = 703
    Top = 29
    Width = 145
    Height = 21
    TabOrder = 0
    OnDropDown = PersonComboBoxDropDown
  end
  object PatientComboBox: TComboBox
    Left = 307
    Top = 29
    Width = 145
    Height = 21
    TabOrder = 2
    OnDropDown = PatientComboBoxDropDown
  end
  object KindShip_ComboBox: TComboBox
    Left = 503
    Top = 29
    Width = 145
    Height = 21
    TabOrder = 1
    OnSelect = KindShip_ComboBoxSelect
  end
  object accident_date_SolarDatePicker: TSolarDatePicker
    AlignWithMargins = True
    Left = 727
    Top = 66
    Width = 121
    Height = 21
    About = 'Created by : Mohamad Khorsandi'
    BiDiMode = bdLeftToRight
    TabOrder = 4
    Enabled = True
    DateKind = dkSolar
    CheckInputOnExit = False
    Divider = dSlash
    ShowToDay = True
    MonthObject = moPopupMenu
    Glyph = gtCalendar
    ShowDefaultDate = False
    AutoCheck = False
    AutoDeleteDelimiter = False
    EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
    MaskEnabled = False
    ColorCaptionStart = 13158600
    ColorCaptionStop = clWhite
    ColorBodyStart = clWhite
    ColorBodyStop = clWhite
    ColorTodayLine = clBlack
    ColorSelectBrush = 14474460
    ColorDisableMonth = clGray
    ColorVacationDay = clRed
    ColorNormalDay = clBlack
    ColorStyle = csWhiteGray
    ButtonStyle = bsRound
    DataFieldType = dftSolar
    DataFieldAutoSaveModified = False
  end
  object Send_date_SolarDatePicker: TSolarDatePicker
    AlignWithMargins = True
    Left = 272
    Top = 66
    Width = 128
    Height = 21
    About = 'Created by : Mohamad Khorsandi'
    BiDiMode = bdLeftToRight
    TabOrder = 5
    Enabled = True
    DateKind = dkSolar
    CheckInputOnExit = False
    Divider = dSlash
    ShowToDay = True
    MonthObject = moPopupMenu
    Glyph = gtCalendar
    ShowDefaultDate = False
    AutoCheck = False
    AutoDeleteDelimiter = False
    EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
    MaskEnabled = False
    ColorCaptionStart = 13158600
    ColorCaptionStop = clWhite
    ColorBodyStart = clWhite
    ColorBodyStop = clWhite
    ColorTodayLine = clBlack
    ColorSelectBrush = 14474460
    ColorDisableMonth = clGray
    ColorVacationDay = clRed
    ColorNormalDay = clBlack
    ColorStyle = csWhiteGray
    ButtonStyle = bsRound
    DataFieldType = dftSolar
    DataFieldAutoSaveModified = False
  end
  object BitBtn1: TBitBtn
    Left = 156
    Top = 200
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 11
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 59
    Top = 200
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    TabOrder = 12
    OnClick = BitBtn2Click
  end
  object File_StateComboBox: TComboBox
    AlignWithMargins = True
    Left = 491
    Top = 66
    Width = 145
    Height = 21
    TabOrder = 6
    OnSelect = File_StateComboBoxSelect
  end
  object Folder_NameComboBox: TComboBox
    AlignWithMargins = True
    Left = 684
    Top = 109
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object percentage_of_compensationComboBox: TComboBox
    AlignWithMargins = True
    Left = 410
    Top = 109
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object delivered_dateSolarDatePicker: TSolarDatePicker
    AlignWithMargins = True
    Left = 59
    Top = 66
    Width = 128
    Height = 21
    About = 'Created by : Mohamad Khorsandi'
    BiDiMode = bdLeftToRight
    TabOrder = 7
    Enabled = True
    DateKind = dkSolar
    CheckInputOnExit = False
    Divider = dSlash
    ShowToDay = True
    MonthObject = moPopupMenu
    Glyph = gtCalendar
    ShowDefaultDate = False
    AutoCheck = False
    AutoDeleteDelimiter = False
    EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
    MaskEnabled = False
    ColorCaptionStart = 13158600
    ColorCaptionStop = clWhite
    ColorBodyStart = clWhite
    ColorBodyStop = clWhite
    ColorTodayLine = clBlack
    ColorSelectBrush = 14474460
    ColorDisableMonth = clGray
    ColorVacationDay = clRed
    ColorNormalDay = clBlack
    ColorStyle = csWhiteGray
    ButtonStyle = bsRound
    DataFieldType = dftSolar
    DataFieldAutoSaveModified = False
  end
  object ExplainedEdit: TEdit
    Left = 59
    Top = 149
    Width = 789
    Height = 21
    TabOrder = 10
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 32
    Top = 72
  end
  object UniQuery1: TUniQuery
    Connection = DataModule5.UniConnection1
    SQL.Strings = (
      'SHOW COLUMNS FROM file WHERE Field = '#39'file_type'#39';')
    MasterSource = DataModule5.FileUniDataSource
    Active = True
    Left = 40
    Top = 136
  end
  object UniQuery2: TUniQuery
    Connection = DataModule5.UniConnection1
    SQL.Strings = (
      'SHOW COLUMNS FROM file WHERE Field = '#39'kinship'#39';')
    MasterSource = DataModule5.FileUniDataSource
    Active = True
    Left = 32
    Top = 208
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery2
    Left = 40
    Top = 264
  end
  object UniQuery3: TUniQuery
    Connection = DataModule5.UniConnection1
    SQL.Strings = (
      'SHOW COLUMNS FROM file WHERE Field = '#39'file_state'#39';')
    Active = True
    Left = 616
    Top = 192
  end
  object UniDataSource3: TUniDataSource
    DataSet = UniQuery3
    Left = 552
    Top = 192
  end
end
