unit FindPatient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TFindPatientForm = class(TForm)
    Label1: TLabel;
    NationalMaskEdit: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindPatientForm: TFindPatientForm;



implementation

{$R *.dfm}

  uses dbcomponent;

procedure TFindPatientForm.BitBtn1Click(Sender: TObject);
begin
if NationalMaskEdit.Text=''  then
begin

dbcomponent.DataModule5.PersonUniTable.Open;
dbcomponent.DataModule5.PersonUniTable.DeleteWhere;

dbcomponent.DataModule5.PersonUniTable.Active:=true;
FindPatientForm.Close;
NationalMaskEdit.Text:='';
end;


dbcomponent.DataModule5.PersonUniTable.Open;
dbcomponent.DataModule5.PersonUniTable.DeleteWhere;
dbcomponent.DataModule5.PersonUniTable.AddWhere('person_national_code = '+ NationalMaskEdit.Text);


dbcomponent.DataModule5.PersonUniTable.Active:=true;
FindPatientForm.Close;
NationalMaskEdit.Text:='';
end;

end.
