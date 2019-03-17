unit PatientSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,dbcomponent, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,NewFile;

type
  TPatientSearchForm = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PatientSearchForm: TPatientSearchForm;

implementation

{$R *.dfm}

uses FileFind;

procedure TPatientSearchForm.BitBtn1Click(Sender: TObject);
begin
PatientId := DBGridEh1.Fields[0].AsInteger;
NewFileForm.PatientComboBox.Text := DBGridEh1.Fields[1].AsString+' '+DBGridEh1.Fields[2].AsString+' ˜Ï '+DBGridEh1.Fields[0].AsString;
PatientSearchForm.Close;
end;

procedure TPatientSearchForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key=VK_F10) then
begin
   FindFileForm.ShowModal;
   ShowMessage('');
end;

end;

end.
