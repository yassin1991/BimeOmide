object FindFileForm: TFindFileForm
  Left = 700
  Top = 329
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 148
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 223
    Top = 40
    Width = 42
    Height = 13
    Caption = #1705#1583' '#1605#1604#1740' :'
  end
  object NationalMaskEdit: TMaskEdit
    Left = 96
    Top = 37
    Width = 68
    Height = 21
    EditMask = '0000000000;1;'
    MaxLength = 10
    TabOrder = 0
    Text = '          '
  end
  object BitBtn1: TBitBtn
    Left = 89
    Top = 97
    Width = 75
    Height = 25
    Caption = #1580#1587#1578#1580#1608
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 97
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    TabOrder = 2
  end
end
