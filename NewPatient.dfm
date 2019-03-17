object NewPatientForm: TNewPatientForm
  Left = 200
  Top = 294
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1576#1740#1605#1575#1585'  '#1580#1583#1740#1583
  ClientHeight = 169
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 941
    Top = 24
    Width = 20
    Height = 13
    Caption = #1606#1575#1605' :'
  end
  object Label2: TLabel
    Left = 731
    Top = 24
    Width = 65
    Height = 13
    Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740' :'
  end
  object Label3: TLabel
    Left = 546
    Top = 24
    Width = 42
    Height = 13
    Caption = #1705#1583' '#1605#1604#1740' :'
  end
  object Label6: TLabel
    Left = 911
    Top = 64
    Width = 48
    Height = 13
    Caption = #1578#1575#1585#1740#1582' '#1578#1608#1604#1583' :'
  end
  object Label7: TLabel
    Left = 151
    Top = 24
    Width = 88
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607' :'
  end
  object Label9: TLabel
    Left = 372
    Top = 24
    Width = 36
    Height = 13
    Caption = #1606#1575#1605' '#1662#1583#1585' :'
  end
  object FirstNameEdit: TEdit
    Left = 823
    Top = 21
    Width = 111
    Height = 21
    TabOrder = 0
  end
  object lastNameEdit: TEdit
    Left = 616
    Top = 21
    Width = 108
    Height = 21
    TabOrder = 1
  end
  object BirthdaySolarDatePicker: TSolarDatePicker
    Left = 784
    Top = 61
    Width = 120
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
  object ShenasnameNumberEdit: TEdit
    Left = 24
    Top = 21
    Width = 120
    Height = 21
    TabOrder = 4
  end
  object nationalCodeEdit: TMaskEdit
    Left = 432
    Top = 21
    Width = 108
    Height = 21
    EditMask = '9999999999;1; '
    MaxLength = 10
    TabOrder = 2
    Text = '          '
  end
  object fatherNameEdit: TEdit
    Left = 245
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    TabOrder = 6
  end
  object BitBtn2: TBitBtn
    Left = 111
    Top = 104
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 7
    OnClick = BitBtn2Click
  end
end
