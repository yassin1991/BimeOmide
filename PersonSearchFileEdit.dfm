object PersonSearchFileEditForm: TPersonSearchFileEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PersonSearchFileEditForm'
  ClientHeight = 322
  ClientWidth = 656
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
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 637
    Height = 208
    BiDiMode = bdRightToLeft
    DataSource = DataModule5.PersonUniDataSource
    DynProps = <>
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
    OnKeyDown = DBGridEh1KeyDown
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_id'
        Footers = <>
        Title.Caption = #1705#1583' '#1588#1582#1589
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_first_name'
        Footers = <>
        Title.Caption = #1606#1575#1605
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_last_name'
        Footers = <>
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'person_national_code'
        Footers = <>
        Title.Caption = #1705#1583#1605#1604#1740
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
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 256
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 256
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    TabOrder = 2
  end
end
