object DeliveryForm: TDeliveryForm
  Left = 0
  Top = 0
  Caption = #1578#1581#1608#1740#1604
  ClientHeight = 242
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object AdvToolPanel1: TAdvToolPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 242
    Align = alClient
    BackgroundTransparent = False
    BackGroundPosition = bpTopLeft
    Button3D = False
    HoverButtonColor = 14483455
    HoverButtonColorTo = 6013175
    DownButtonColor = 557032
    DownButtonColorTo = 8182519
    CaptionButton = False
    ColorTo = 13007698
    GradientDirection = gdVertical
    DockDots = True
    Caption = 'AdvToolPanel1'
    CaptionGradientDirection = gdVertical
    FocusCaptionFontColor = clBlack
    FocusCaptionColor = 9758459
    FocusCaptionColorTo = 1414638
    NoFocusCaptionFontColor = clWhite
    NoFocusCaptionColor = 14059353
    NoFocusCaptionColorTo = 9648131
    CloseHint = 'Close panel'
    LockHint = 'Lock panel'
    UnlockHint = 'Unlock panel'
    Sections = <>
    SectionLayout.CaptionColor = 16244422
    SectionLayout.CaptionColorTo = 14060643
    SectionLayout.CaptionFontColor = 8661248
    SectionLayout.CaptionRounded = False
    SectionLayout.Corners = scRectangle
    SectionLayout.BackGroundColor = 16248798
    SectionLayout.BackGroundColorTo = 16242365
    SectionLayout.BorderColor = clWhite
    SectionLayout.BorderWidth = 1
    SectionLayout.BackGroundGradientDir = gdVertical
    SectionLayout.Indent = 4
    SectionLayout.Spacing = 4
    SectionLayout.ItemFontColor = 11876608
    SectionLayout.ItemHoverTextColor = 11876608
    SectionLayout.ItemHoverUnderline = True
    SectionLayout.UnderLineCaption = False
    ShowCaption = False
    ShowCaptionBorder = False
    Version = '1.6.0.2'
    object RzGroupBox1: TRzGroupBox
      Left = 336
      Top = 24
      Width = 353
      Height = 57
      BiDiMode = bdRightToLeft
      Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
      ParentBiDiMode = False
      TabOrder = 0
      object RzMaskEdit1: TRzMaskEdit
        Left = 24
        Top = 19
        Width = 305
        Height = 21
        TabOrder = 0
        Text = ''
      end
    end
    object RzButton1: TRzButton
      Left = 113
      Top = 185
      Caption = #1578#1581#1608#1740#1604
      TabOrder = 1
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      Left = 16
      Top = 185
      Caption = #1604#1594#1608
      TabOrder = 2
      OnClick = RzButton2Click
    end
    object RzGroupBox2: TRzGroupBox
      Left = 336
      Top = 112
      Width = 353
      Height = 57
      BiDiMode = bdRightToLeft
      Caption = #1578#1575#1585#1740#1582' '#1578#1581#1608#1740#1604
      ParentBiDiMode = False
      TabOrder = 3
      object SolarDatePicker1: TSolarDatePicker
        Left = 24
        Top = 24
        Width = 305
        Height = 21
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        TabOrder = 0
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
    end
  end
end
