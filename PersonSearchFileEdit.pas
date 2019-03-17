unit PersonSearchFileEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,dbcomponent, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TPersonSearchFileEditForm = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

      procedure PersonEditing();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonSearchFileEditForm: TPersonSearchFileEditForm;

implementation

{$R *.dfm}

uses FileFind, FindPerson, PersonEdit,FileEdit;

procedure TPersonSearchFileEditForm.BitBtn1Click(Sender: TObject);
var
  buttonSelected : Integer;
begin

if (DBGridEh1.Fields[4].AsString<>'') then

begin
       PersonId := DBGridEh1.Fields[0].AsInteger;
   FileEditForm.PersonComboBox.Text := DBGridEh1.Fields[1].AsString+' '+DBGridEh1.Fields[2].AsString+' کد '+DBGridEh1.Fields[0].AsString;
   PersonSearchFileEditForm.Close;
end
else
begin
    //ShowMessage('فرد انتخاب شده به قبلا به عنوان نظامی انتخاب نشده لذا باید فیلدهایش کامل شود');
    buttonSelected := MessageDlg('فرد انتخاب شده قبلا به عنوان نظامی انتخاب نشده لذا باید فیلدهایش کامل شود'
    ,mtError,[mbYes,mbNO],0);

    if (buttonSelected = mrYes) then  PersonEditing();



end;

end;

procedure TPersonSearchFileEditForm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = VK_F10) then
begin
   FindPersonForm.ShowModal;
end;


if (key = VK_F2) then
begin

PersonEditing();

end;

if(key=VK_RETURN) then   BitBtn1Click(self);


end;

procedure TPersonSearchFileEditForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key = VK_F10) then
begin
    FindPersonForm.ShowModal;
end;

end;


procedure TPersonSearchFileEditForm.PersonEditing();
begin

PersonEdit.PersonIds:=DBGridEh1.Fields[0].AsInteger;
PersonEdit.PersonEditForm.FirstNameEdit.Text:= DBGridEh1.Fields[1].AsString;
PersonEdit.PersonEditForm.lastNameEdit.Text  := DBGridEh1.Fields[2].AsString;
PersonEdit.PersonEditForm.nationalCodeEdit.Text :=  DBGridEh1.Fields[3].AsString;
PersonEdit.PersonEditForm.salaryNumberEdit.Text:=   DBGridEh1.Fields[4].AsString;
PersonEdit.PersonEditForm.militaryRankComboBox.Text  :=DBGridEh1.Fields[5].AsString;
PersonEdit.PersonEditForm.BirthdaySolarDatePicker.Text := DBGridEh1.Fields[6].AsString;
PersonEdit.PersonEditForm.ShenasnameNumberEdit.Text:= DBGridEh1.Fields[8].AsString;
PersonEdit.PersonEditForm.fatherNameEdit.Text := DBGridEh1.Fields[9].AsString;
PersonEdit.PersonEditForm.PhoneNumberEdit.Text :=DBGridEh1.Fields[10].AsString;
PersonEditForm.ShowModal;

end;

end.
