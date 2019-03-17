﻿unit NewFile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,dbcomponent,
  CompoMansEh, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh, PivotGridsEh, DBGridEh,
  DBLookupEh, SolarCalendarPackage, Vcl.ComCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TNewFileForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    PatientComboBox: TComboBox;
    Label4: TLabel;
    KindShip_ComboBox: TComboBox;
    accident_date_SolarDatePicker: TSolarDatePicker;
    Send_date_SolarDatePicker: TSolarDatePicker;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    File_typeComboBox: TComboBox;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    PersonComboBox: TComboBox;
    ExplainedEdit: TEdit;
    Label7: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure PersonComboBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PatientComboBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure PersonComboBoxDropDown(Sender: TObject);
    procedure PatientComboBoxDropDown(Sender: TObject);
    procedure KindShip_ComboBoxSelect(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Destroycompon();
    procedure File_typeComboBoxSelect(Sender: TObject);
    procedure ClearEdits(Owner: TWinControl);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewFileForm: TNewFileForm;
  PersonId: Integer;
  PatientId: Integer;

implementation

{$R *.dfm}

uses NewPerson, NewPatient, MainPage, PersonSearch, PatientSearch;







procedure TNewFileForm.PatientComboBoxDropDown(Sender: TObject);
begin
dbcomponent.DataModule5.PersonUniTable.DeleteWhere;
dbcomponent.DataModule5.PersonUniTable.Active:=true;
PatientSearchForm.ShowModal;
end;

procedure TNewFileForm.PatientComboBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key=VK_INSERT) then
begin

   NewPatientForm.ShowModal;

end;

end;

procedure TNewFileForm.Destroycompon();
begin

KindShip_ComboBox.Clear;
File_typeComboBox.Clear;

end;


procedure TNewFileForm.BitBtn1Click(Sender: TObject);
begin
dbcomponent.DataModule5.FileUniTable.Open;

dbcomponent.DataModule5.FileUniTable.AppendRecord([nil,PersonId,PatientId,KindShip_ComboBox.Text,File_typeComboBox.Text,accident_date_SolarDatePicker.ConvertDate,accident_date_SolarDatePicker.Text,Send_date_SolarDatePicker.ConvertDate,
Send_date_SolarDatePicker.Text,nil,nil,nil,nil,nil,nil,ExplainedEdit.Text]);
//lastNameEdit.Text:=FirstNameEdit.Text;


dbcomponent.DataModule5.MainViewUniTable.Refresh;
MainPageForm.DBGridEh1.Refresh;
NewFileForm.Close;
ClearEdits(NewFileForm);
end;

procedure TNewFileForm.BitBtn2Click(Sender: TObject);
begin
NewFileForm.Close;

 ClearEdits(NewFileForm);
end;

procedure TNewFileForm.File_typeComboBoxSelect(Sender: TObject);
begin

if File_typeComboBox.Text = 'بیماری' then
begin
accident_date_SolarDatePicker.Enabled:=false;
ExplainedEdit.Enabled:=false;
end

else
begin
  accident_date_SolarDatePicker.Enabled:=true;
  ExplainedEdit.Enabled:=True;
end;

end;

procedure TNewFileForm.FormActivate(Sender: TObject);
var
strArrayFS  : TArray<string>;
strArrayT  : TArray<string>;
i : Integer;
j : Integer;
charArray : Array[0..0] of Char;
s : string;


begin

DataModule5.UniConnection1.Connect;
//   DataModule5.FileUniTable.Open;

    UniQuery1.Open;
   UniQuery2.Open;

charArray[0] := ',';
s := UniQuery1.FieldByName('type').AsString.Replace('enum(','').Replace(')','').Replace('''','');

strArrayFS :=  UniQuery2.FieldByName('type').AsString.Replace('enum(','').Replace(')','').Replace('''','').Split(charArray);

 strArrayT :=s.Split(charArray);

    for i := 0 to Length(strArrayT)-1 do
    begin

      File_typeComboBox.Items.Add(strArrayT[i]);

    end;



     for j := 0 to Length(strArrayFS)-1 do
      KindShip_ComboBox.Items.Add(strArrayFS[j]);
end;

procedure TNewFileForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ClearEdits(NewFileForm);
end;

procedure TNewFileForm.KindShip_ComboBoxSelect(Sender: TObject);
begin
if KindShip_ComboBox.Text = 'سرپرست' then
begin
PatientComboBox.Enabled:=false;
PatientId:=PersonId;
end
else

begin
     patientComboBox.Enabled:=true;
end;

end;

procedure TNewFileForm.PersonComboBoxDropDown(Sender: TObject);
begin
    dbcomponent.DataModule5.PersonUniTable.DeleteWhere;
    dbcomponent.DataModule5.PersonUniTable.Active:=true;
    PersonSearchForm.ShowModal;
end;

procedure TNewFileForm.PersonComboBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=VK_INSERT) then
begin

   NewPersonForm.ShowModal;

end;

end;

procedure TNewFileForm.ClearEdits(Owner: TWinControl);
var i: integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do

  begin

    if (Owner.Components[i]) is TEdit then TEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TMaskEdit then TMaskEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TSolarDatePicker then
    begin
      TSolarDatePicker(Owner.Components[i]).Clear;
      TSolarDatePicker(Owner.Components[i]).ShowDefaultDate:=False;
    end;

    if (Owner.Components[i]) is TComboBox then TComboBox(Owner.Components[i]).Clear;


  end;
   //TEdit(Owner.Components[i]).Clear;

end;

end.




















