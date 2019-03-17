unit Delivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SolarCalendarPackage, RzButton,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzPanel, Vcl.ExtCtrls, ToolPanels;

type
  TDeliveryForm = class(TForm)
    AdvToolPanel1: TAdvToolPanel;
    RzGroupBox1: TRzGroupBox;
    RzMaskEdit1: TRzMaskEdit;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzGroupBox2: TRzGroupBox;
    SolarDatePicker1: TSolarDatePicker;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliveryForm: TDeliveryForm;

implementation

{$R *.dfm}

uses dbcomponent;

procedure TDeliveryForm.RzButton1Click(Sender: TObject);
begin
dbcomponent.DataModule5.FileUniTable.close;

  dbcomponent.DataModule5.FileUniTable.Open;

  if dbcomponent.DataModule5.FileUniTable.Locate('file_id',RzMaskEdit1.Text,[]) then

  begin
        dbcomponent.DataModule5.FileUniTable.Edit;

  dbcomponent.DataModule5.FileUniTable.FieldByName('file_id').Value := StrToInt(RzMaskEdit1.Text);

  dbcomponent.DataModule5.FileUniTable.FieldByName('file_state').Value := 'تحویل داده شده';

  dbcomponent.DataModule5.FileUniTable.FieldByName('shamsi_delivered_date').Value := SolarDatePicker1.Text;

  dbcomponent.DataModule5.FileUniTable.FieldByName('miladi_delivered_date').Value := SolarDatePicker1.ConvertDate;

  dbcomponent.DataModule5.FileUniTable.FieldByName('folder_name').Value := '';

  dbcomponent.DataModule5.FileUniTable.Post;
  end;
end;

procedure TDeliveryForm.RzButton2Click(Sender: TObject);
begin
DeliveryForm.Close;
end;

end.
