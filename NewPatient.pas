unit NewPatient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,dbcomponent,
  SolarCalendarPackage;

type
  TNewPatientForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    FirstNameEdit: TEdit;
    lastNameEdit: TEdit;
    BirthdaySolarDatePicker: TSolarDatePicker;
    ShenasnameNumberEdit: TEdit;
    nationalCodeEdit: TMaskEdit;
    Label9: TLabel;
    fatherNameEdit: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure ClearEdits(Owner: TWinControl);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewPatientForm: TNewPatientForm;

implementation

{$R *.dfm}

uses NewFile;

procedure TNewPatientForm.BitBtn2Click(Sender: TObject);
begin

   dbcomponent.DataModule5.PersonUniTable.Open;

dbcomponent.DataModule5.PersonUniTable.AppendRecord([nil,FirstNameEdit.Text,lastNameEdit.Text,nationalCodeEdit.Text
,nil,nil,BirthdaySolarDatePicker.Text,BirthdaySolarDatePicker.ConvertDate,ShenasnameNumberEdit.Text,fatherNameEdit.Text]);
//lastNameEdit.Text:=FirstNameEdit.Text;

NewPatientForm.Close;

PatientId := dbcomponent.DataModule5.PersonUniTable.LastInsertId;
NewFileForm.PatientComboBox.Text := FirstNameEdit.Text +' '+lastNameEdit.Text+' �� '+PatientId.ToString;
NewPatientForm.ClearEdits(NewPatientForm);

end;



procedure TNewPatientForm.ClearEdits(Owner: TWinControl);
var i: integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do

  begin

    if (Owner.Components[i]) is TEdit then TEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TMaskEdit then TMaskEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TSolarDatePicker then TSolarDatePicker(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TComboBox then TComboBox(Owner.Components[i]).Clear;


  end;
   //TEdit(Owner.Components[i]).Clear;

end;

procedure TNewPatientForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NewPatientForm.ClearEdits(NewPatientForm);
end;

end.
