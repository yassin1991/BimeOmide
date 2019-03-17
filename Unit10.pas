unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TForm10 = class(TForm)
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
  Form10: TForm10;

implementation

{$R *.dfm}

uses dbcomponent, Unit9;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
dbcomponent.DataModule5.PersonUniTable.Open;
dbcomponent.DataModule5.PersonUniTable.DeleteWhere;
dbcomponent.DataModule5.PersonUniTable.AddWhere('person_national_code = '+ NationalMaskEdit.Text);

//dbcomponent.DataModule5.MainViewUniDataSource.Enabled:=true;
dbcomponent.DataModule5.PersonUniTable.Active:=true;
form9.Close;
NationalMaskEdit.Text:='';

end;

end.
