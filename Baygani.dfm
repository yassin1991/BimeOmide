object BayganiForm: TBayganiForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1576#1575#1740#1711#1575#1606#1740
  ClientHeight = 507
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvToolPanel1: TAdvToolPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 297
    Align = alTop
    BackgroundTransparent = False
    BackGroundPosition = bpTopLeft
    Button3D = False
    HoverButtonColor = 14483455
    HoverButtonColorTo = 6013175
    DownButtonColor = 557032
    DownButtonColorTo = 8182519
    CaptionButton = False
    Color = clSkyBlue
    ColorTo = 13007698
    GradientDirection = gdVertical
    DockDots = False
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
      Left = 1
      Top = 1
      Width = 883
      Height = 295
      Align = alTop
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      object RzGroupBox2: TRzGroupBox
        Left = 1
        Top = 14
        Width = 881
        Height = 64
        Align = alTop
        BiDiMode = bdRightToLeft
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
        ParentBiDiMode = False
        TabOrder = 0
        DesignSize = (
          881
          64)
        object RzMaskEdit1: TRzMaskEdit
          AlignWithMargins = True
          Left = 518
          Top = 31
          Width = 353
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          Text = ''
        end
      end
      object RzGroupBox3: TRzGroupBox
        Left = 1
        Top = 137
        Width = 881
        Height = 64
        Align = alTop
        Caption = #1583#1585#1589#1583
        TabOrder = 1
        DesignSize = (
          881
          64)
        object RzMaskEdit2: TRzMaskEdit
          AlignWithMargins = True
          Left = 519
          Top = 23
          Width = 353
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          Text = ''
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 1
        Top = 78
        Width = 881
        Height = 59
        Align = alTop
        Caption = #1606#1575#1605' '#1586#1608#1605#1705#1606' '#1576#1575#1740#1711#1575#1606#1740
        TabOrder = 2
        DesignSize = (
          881
          59)
        object RzComboBox2: TRzComboBox
          AlignWithMargins = True
          Left = 518
          Top = 32
          Width = 353
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          OnSelect = RzComboBox1Select
        end
      end
    end
    object Add: TRzButton
      Left = 103
      Top = 253
      Width = 88
      Height = 37
      Caption = #1575#1601#1586#1608#1583#1606
      TabOrder = 1
      OnClick = AddClick
    end
    object Cancel: TRzButton
      Left = 9
      Top = 254
      Width = 88
      Height = 37
      Align = alCustom
      Caption = #1604#1594#1608
      TabOrder = 2
      OnClick = CancelClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 297
    Width = 885
    Height = 210
    Align = alClient
    BiDiMode = bdRightToLeft
    DataSource = DataModule5.Baygani_folderDataSource
    DynProps = <>
    ParentBiDiMode = False
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'file_id'
        Footers = <>
        Title.Caption = #1705#1583' '#1601#1575#1740#1604
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_id'
        Footers = <>
        Title.Caption = #1705#1583' '#1576#1740#1605#1607' '#1711#1584#1575#1585
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_first_name'
        Footers = <>
        Title.Caption = #1606#1575#1605' '#1576#1740#1605#1607' '#1711#1584#1575#1585
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_last_name'
        Footers = <>
        Title.Caption = #1606#1575#1605'  '#1582#1575#1606#1608#1575#1583#1711#1740' '#1576#1740#1605#1607' '#1711#1584#1575#1585
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_national_code'
        Footers = <>
        Title.Caption = #1588#1605#1575#1585#1607' '#1605#1604#1740' '#1576#1740#1605#1607' '#1711#1584#1575#1585
        Width = 155
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kinship'
        Footers = <>
        Title.Caption = #1606#1587#1576#1578' '#1576#1740#1605#1575#1585
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_salary_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_military_rank'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_shamsi_birthdate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_miladi_birthdate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_shenasname_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_father_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_phone_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_bank_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_id_fk'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_id_fk'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'file_type'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'miladi_accident_date'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'shamsi_accident_date'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'miladi_send_date'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'shamsi_send_date'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'file_state'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'folder_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'old_file_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'percentage_of_compensation'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'shamsi_delivered_date'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'miladi_delivered_date'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'explained'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_id'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_first_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_last_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_national_code'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_salary_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_military_rank'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_shamsi_birthdate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_miladi_birthdate'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_shenasname_number'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_father_name'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'patient_phone_number'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
