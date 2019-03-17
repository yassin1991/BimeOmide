object NewFileForm: TNewFileForm
  Left = 417
  Top = 260
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1662#1585#1606#1583#1607' '#1580#1583#1740#1583
  ClientHeight = 238
  ClientWidth = 706
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
    Left = 190
    Top = 24
    Width = 28
    Height = 13
    Caption = #1576#1740#1605#1575#1585' :'
  end
  object Label2: TLabel
    Left = 610
    Top = 77
    Width = 49
    Height = 13
    Caption = #1606#1608#1593' '#1662#1585#1608#1606#1583#1607':'
  end
  object Label3: TLabel
    Left = 607
    Top = 24
    Width = 48
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = #1576#1740#1605#1607' '#1711#1584#1575#1585' :'
    ParentBiDiMode = False
  end
  object Label4: TLabel
    Left = 398
    Top = 26
    Width = 36
    Height = 13
    Caption = #1606#1587#1576#1578' :'
  end
  object Label5: TLabel
    Left = 398
    Top = 77
    Width = 55
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1581#1575#1583#1579#1607' :'
  end
  object Label6: TLabel
    Left = 190
    Top = 77
    Width = 59
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1575#1585#1587#1575#1604' :'
  end
  object Label7: TLabel
    Left = 625
    Top = 131
    Width = 30
    Height = 13
    Caption = #1588#1585#1581' :'
  end
  object File_typeComboBox: TComboBox
    Left = 456
    Top = 74
    Width = 145
    Height = 21
    TabOrder = 3
    OnSelect = File_typeComboBoxSelect
  end
  object PersonComboBox: TComboBox
    Left = 456
    Top = 21
    Width = 145
    Height = 21
    TabOrder = 0
    OnDropDown = PersonComboBoxDropDown
    OnKeyDown = PersonComboBoxKeyDown
  end
  object PatientComboBox: TComboBox
    Left = 39
    Top = 21
    Width = 145
    Height = 21
    TabOrder = 2
    OnDropDown = PatientComboBoxDropDown
    OnKeyDown = PatientComboBoxKeyDown
  end
  object KindShip_ComboBox: TComboBox
    Left = 247
    Top = 21
    Width = 145
    Height = 21
    TabOrder = 1
    OnSelect = KindShip_ComboBoxSelect
  end
  object accident_date_SolarDatePicker: TSolarDatePicker
    Left = 255
    Top = 74
    Width = 137
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
    Left = 39
    Top = 74
    Width = 145
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
    Left = 136
    Top = 184
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 39
    Top = 184
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object ExplainedEdit: TEdit
    Left = 39
    Top = 128
    Width = 562
    Height = 21
    TabOrder = 8
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 88
    Top = 24
  end
  object UniQuery1: TUniQuery
    Connection = DataModule5.UniConnection1
    SQL.Strings = (
      'SHOW COLUMNS FROM file WHERE Field = '#39'file_type'#39';')
    MasterSource = DataModule5.FileUniDataSource
    Left = 24
    Top = 16
  end
  object UniQuery2: TUniQuery
    Connection = DataModule5.UniConnection1
    SQL.Strings = (
      'SHOW COLUMNS FROM file WHERE Field = '#39'kinship'#39';')
    MasterSource = DataModule5.FileUniDataSource
    Left = 16
    Top = 88
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery2
    Left = 72
    Top = 72
  end
end
