unit NewPerson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,dbcomponent, Vcl.StdCtrls, Vcl.Buttons,StrUtils,
  SolarCalendarPackage, Vcl.Mask, Data.DB, MemDS, DBAccess, Uni;

type
  TNewPersonForm = class(TForm)
    FirstNameEdit: TEdit;
    Label1: TLabel;
    lastNameEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    salaryNumberEdit: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    BirthdaySolarDatePicker: TSolarDatePicker;
    Label6: TLabel;
    ShenasnameNumberEdit: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    nationalCodeEdit: TMaskEdit;
    militaryRankComboBox: TComboBox;
    Label8: TLabel;
    PhoneNumberEdit: TMaskEdit;
    Label9: TLabel;
    fatherNameEdit: TEdit;
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    Label10: TLabel;
    bank_numberEdit: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClearEdits(Owner: TWinControl);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewPersonForm : TNewPersonForm;

implementation

{$R *.dfm}

uses NewFile;



procedure TNewPersonForm.BitBtn1Click(Sender: TObject);
begin
    NewPersonForm.Close;
    NewPersonForm.ClearEdits(NewPersonForm);
    //Form5.Destroy;
end;

procedure TNewPersonForm.BitBtn2Click(Sender: TObject);
begin

   dbcomponent.DataModule5.PersonUniTable.Open;

dbcomponent.DataModule5.PersonUniTable.AppendRecord([nil,FirstNameEdit.Text,lastNameEdit.Text,nationalCodeEdit.Text
,salaryNumberEdit.Text,militaryRankComboBox.Text,BirthdaySolarDatePicker.Text,BirthdaySolarDatePicker.ConvertDate,ShenasnameNumberEdit.Text,fatherNameEdit.Text,PhoneNumberEdit.Text,bank_numberEdit.Text]);
//lastNameEdit.Text:=FirstNameEdit.Text;
NewPersonForm.CleanupInstance;
NewPersonForm.Close;

PersonId := dbcomponent.DataModule5.PersonUniTable.LastInsertId;
NewFileForm.PersonComboBox.Text := FirstNameEdit.Text +' '+lastNameEdit.Text+' ˜Ï '+PersonId.ToString;

NewPersonForm.ClearEdits(NewPersonForm);

end;

procedure TNewPersonForm.FormActivate(Sender: TObject);
var
strArrayFS  : TArray<string>;
strArrayT  : TArray<string>;
i : Integer;
j : Integer;
charArray : Array[0..0] of Char;
s : string;


begin

DataModule5.UniConnection1.Connect;


    UniQuery1.Open;

charArray[0] := ',';
s := UniQuery1.FieldByName('type').AsString.Replace('enum(','').Replace(')','').Replace('''','');


 strArrayT :=s.Split(charArray);

    for i := 0 to Length(strArrayT)-1 do
      militaryRankComboBox.Items.Add(strArrayT[i]);

end;

procedure TNewPersonForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NewPersonForm.CleanupInstance;
NewPersonForm.ClearEdits(NewPersonForm);

end;


procedure TNewPersonForm.ClearEdits(Owner: TWinControl);
var i: integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do

  begin

    if (Owner.Components[i]) is TEdit then TEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TMaskEdit then TMaskEdit(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TSolarDatePicker then TSolarDatePicker(Owner.Components[i]).Clear;
    if (Owner.Components[i]) is TComboBox then TComboBox(Owner.Components[i]).Clear;


  end;


end;

end.
