﻿unit FileEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, SolarCalendarPackage, Vcl.Mask;

type
  TFileEditForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    File_typeComboBox: TComboBox;
    PersonComboBox: TComboBox;
    PatientComboBox: TComboBox;
    KindShip_ComboBox: TComboBox;
    accident_date_SolarDatePicker: TSolarDatePicker;
    Send_date_SolarDatePicker: TSolarDatePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    Label7: TLabel;
    File_StateComboBox: TComboBox;
    Label8: TLabel;
    Folder_NameComboBox: TComboBox;
    Label9: TLabel;
    percentage_of_compensationComboBox: TComboBox;
    Label10: TLabel;
    delivered_dateSolarDatePicker: TSolarDatePicker;
    Label11: TLabel;
    ExplainedEdit: TEdit;
    UniQuery3: TUniQuery;
    UniDataSource3: TUniDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ClearEdits(Owner: TWinControl);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure KindShip_ComboBoxSelect(Sender: TObject);
    procedure File_typeComboBoxSelect(Sender: TObject);
    procedure File_StateComboBoxSelect(Sender: TObject);
    procedure PersonComboBoxDropDown(Sender: TObject);
    procedure PatientComboBoxDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileEditForm: TFileEditForm;
  PersonId: Integer;
  PatientId: Integer;
  FileId: Integer;

implementation

{$R *.dfm}

uses dbcomponent, MainPage,PersonSearchFileEdit,PatientSearchFileEdit;

procedure TFileEditForm.BitBtn1Click(Sender: TObject);
begin

  dbcomponent.DataModule5.PersonUniTable.Open;

  dbcomponent.DataModule5.FileUniTable.Edit;
  dbcomponent.DataModule5.FileUniTable.FieldByName('file_id').Value := FileId;
  dbcomponent.DataModule5.FileUniTable.FieldByName('person_id_fk').Value
    := PersonId;
  dbcomponent.DataModule5.FileUniTable.FieldByName('patient_id_fk').Value :=
    PatientId;
  dbcomponent.DataModule5.FileUniTable.FieldByName('kinship').Value :=
    KindShip_ComboBox.Text;
  dbcomponent.DataModule5.FileUniTable.FieldByName('file_type').Value :=
    File_typeComboBox.Text;
  dbcomponent.DataModule5.FileUniTable.FieldByName('miladi_accident_date').Value
    := accident_date_SolarDatePicker.ConvertDate;
  dbcomponent.DataModule5.FileUniTable.FieldByName('shamsi_accident_date').Value
    := accident_date_SolarDatePicker.Text;
  dbcomponent.DataModule5.FileUniTable.FieldByName('miladi_send_date').Value :=
    Send_date_SolarDatePicker.ConvertDate;
  dbcomponent.DataModule5.FileUniTable.FieldByName('shamsi_send_date').Value :=
    Send_date_SolarDatePicker.Text;
  dbcomponent.DataModule5.FileUniTable.FieldByName('file_state').Value :=
    File_StateComboBox.Text;
  dbcomponent.DataModule5.FileUniTable.FieldByName('folder_name').Value :=
    Folder_NameComboBox.Text;
  // dbcomponent.DataModule5.FileUniTable.FieldByName('old_file_number').Value := ;
  dbcomponent.DataModule5.FileUniTable.FieldByName('percentage_of_compensation')
    .Value := percentage_of_compensationComboBox.Text;
  if delivered_dateSolarDatePicker.Text <> '' then
  begin
    dbcomponent.DataModule5.FileUniTable.FieldByName('shamsi_delivered_date')
      .Value := delivered_dateSolarDatePicker.Text;
    dbcomponent.DataModule5.FileUniTable.FieldByName('miladi_delivered_date')
      .Value := delivered_dateSolarDatePicker.ConvertDate;
  end;

  dbcomponent.DataModule5.FileUniTable.FieldByName('explained').Value :=
    ExplainedEdit.Text;

  dbcomponent.DataModule5.FileUniTable.Post;

  dbcomponent.DataModule5.MainViewUniTable.Refresh;

  MainPageForm.DBGridEh1.Refresh;

  FileEditForm.Close;
  ClearEdits(FileEditForm);

end;

procedure TFileEditForm.File_StateComboBoxSelect(Sender: TObject);
begin
        if (File_StateComboBox.Text = 'ارسال شده') then
  begin
    delivered_dateSolarDatePicker.Enabled := false;
    Folder_NameComboBox.Enabled := false;
    percentage_of_compensationComboBox.Enabled := false;

  end

  else

  begin
    delivered_dateSolarDatePicker.Enabled := true;
    Folder_NameComboBox.Enabled := true;
    percentage_of_compensationComboBox.Enabled := true;
  end;
end;

procedure TFileEditForm.File_typeComboBoxSelect(Sender: TObject);
begin
 if (File_typeComboBox.Text = 'بیماری') then
  begin
    accident_date_SolarDatePicker.Enabled := false;
  end
  else
  begin
    accident_date_SolarDatePicker.Enabled := true;
  end;
end;

procedure TFileEditForm.FormActivate(Sender: TObject);
var
  strArrayFS: TArray<string>;
  strArrayT: TArray<string>;
  strArrayFileState: TArray<string>;
  i: Integer;
  j: Integer;
  k:Integer;
  charArray: Array [0 .. 0] of Char;
  s: string;

begin
  if (File_typeComboBox.Text = 'بیماری') then
  begin
    accident_date_SolarDatePicker.Enabled := false;
  end
  else
  begin
    accident_date_SolarDatePicker.Enabled := true;
  end;

  if (KindShip_ComboBox.Text = 'سرپرست') then
  begin
    PatientComboBox.Enabled := false;
  end
  else
  begin
    PatientComboBox.Enabled := true;
  end;

  if (File_StateComboBox.Text = 'ارسال شده') then
  begin
    delivered_dateSolarDatePicker.Enabled := false;
    Folder_NameComboBox.Enabled := false;
    percentage_of_compensationComboBox.Enabled := false;

  end

  else

  begin
    delivered_dateSolarDatePicker.Enabled := true;
    Folder_NameComboBox.Enabled := true;
    percentage_of_compensationComboBox.Enabled := true;
  end;

  DataModule5.UniConnection1.Connect;
  // DataModule5.FileUniTable.Open;

  UniQuery1.Open;
  UniQuery2.Open;

  charArray[0] := ',';
  s := UniQuery1.FieldByName('type').AsString.Replace('enum(', '')
    .Replace(')', '').Replace('''', '');

  strArrayFS := UniQuery2.FieldByName('type').AsString.Replace('enum(', '')
    .Replace(')', '').Replace('''', '').Split(charArray);


      strArrayFileState := UniQuery3.FieldByName('type').AsString.Replace('enum(', '')
    .Replace(')', '').Replace('''', '').Split(charArray);

  strArrayT := s.Split(charArray);

  for i := 0 to Length(strArrayT) - 1 do
  begin

    File_typeComboBox.Items.Add(strArrayT[i]);

  end;

  for j := 0 to Length(strArrayFS) - 1 do
    KindShip_ComboBox.Items.Add(strArrayFS[j]);

    for k := 0 to Length(strArrayFileState) - 1 do
    File_StateComboBox.Items.Add(strArrayFileState[k]);

end;

procedure TFileEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ClearEdits(FileEditForm);
end;

procedure TFileEditForm.KindShip_ComboBoxSelect(Sender: TObject);
begin
  if (KindShip_ComboBox.Text = 'سرپرست') then
  begin
    PatientComboBox.Enabled := false;
  end
  else
  begin
    PatientComboBox.Enabled := true;
  end;
end;

procedure TFileEditForm.PatientComboBoxDropDown(Sender: TObject);
begin
dbcomponent.DataModule5.PersonUniTable.DeleteWhere;
dbcomponent.DataModule5.PersonUniTable.Active:=true;
PatientSearchFileEditForm.ShowModal;
end;

procedure TFileEditForm.PersonComboBoxDropDown(Sender: TObject);
begin
    dbcomponent.DataModule5.PersonUniTable.DeleteWhere;
    dbcomponent.DataModule5.PersonUniTable.Active:=true;
    PersonSearchFileEditForm.ShowModal;
end;

procedure TFileEditForm.BitBtn2Click(Sender: TObject);
begin

  FileEditForm.Close;
  ClearEdits(FileEditForm);

end;

procedure TFileEditForm.ClearEdits(Owner: TWinControl);
var
  i: Integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do

  begin

    if (Owner.Components[i]) is TEdit then
      TEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TMaskEdit then
      TMaskEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TSolarDatePicker then
    begin
      TSolarDatePicker(Owner.Components[i]).Clear;
      TSolarDatePicker(Owner.Components[i]).ShowDefaultDate := false;
    end;

    if (Owner.Components[i]) is TComboBox then
      TComboBox(Owner.Components[i]).Clear;

  end;
  // TEdit(Owner.Components[i]).Clear;

end;

end.
