unit FileFind;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TFindFileForm = class(TForm)
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
  FindFileForm: TFindFileForm;



implementation

{$R *.dfm}


uses MainPage,dbcomponent;

procedure TFindFileForm.BitBtn1Click(Sender: TObject);
begin
dbcomponent.DataModule5.MainViewUniTable.Open;
dbcomponent.DataModule5.MainViewUniTable.DeleteWhere;
dbcomponent.DataModule5.MainViewUniTable.AddWhere('person_national_code = '+ NationalMaskEdit.Text);

//dbcomponent.DataModule5.MainViewUniDataSource.Enabled:=true;
dbcomponent.DataModule5.MainViewUniTable.Active:=true;
FindFileForm.Close;
NationalMaskEdit.Text:='';

end;

end.
