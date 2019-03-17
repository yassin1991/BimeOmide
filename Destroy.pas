unit Destroy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, ToolPanels, Vcl.StdCtrls, RzCmboBx, RzPanel, RzButton;

type
  TDestroyForm = class(TForm)
    AdvToolPanel1: TAdvToolPanel;
    DBGridEh1: TDBGridEh;
    RzGroupBox1: TRzGroupBox;
    RzComboBox2: TRzComboBox;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    procedure FormCreate(Sender: TObject);
    procedure RzComboBox2Select(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DestroyForm: TDestroyForm;

implementation

{$R *.dfm}

uses dbcomponent;

procedure TDestroyForm.FormCreate(Sender: TObject);
begin
  with dbcomponent.DataModule5.BayganiUniQuery do
  begin
    close;
    SQL.Clear;

    SQL.Text := 'select * from folder_name';
    Open;

    dbcomponent.DataModule5.BayganiUniQuery.First;

    while not dbcomponent.DataModule5.BayganiUniQuery.Eof do
    begin
      RzComboBox2.Items.Add(dbcomponent.DataModule5.BayganiUniQuery
        ['folder_name']);

      dbcomponent.DataModule5.BayganiUniQuery.Next;



    end;
    SQL.Clear;
  end;
end;

procedure TDestroyForm.RzButton1Click(Sender: TObject);
begin
  dbcomponent.DataModule5.FileUniTable.close;

  dbcomponent.DataModule5.FileUniTable.Open;

  while not dbcomponent.DataModule5.FileUniTable.Eof do
    begin

      if dbcomponent.DataModule5.FileUniTable.Locate('folder_name',RzComboBox2.Text,[]) then

  begin
  dbcomponent.DataModule5.FileUniTable.Edit;

  dbcomponent.DataModule5.FileUniTable.FieldByName('file_state').Value := '���� ���';

  dbcomponent.DataModule5.FileUniTable.FieldByName('folder_name').Value := '';

  dbcomponent.DataModule5.FileUniTable.Post;
  end;


      dbcomponent.DataModule5.FileUniTable.Next;



    end;

    dbcomponent.DataModule5.Baygani_Folder.Refresh;


end;

procedure TDestroyForm.RzButton2Click(Sender: TObject);
begin
DestroyForm.Close;
end;

procedure TDestroyForm.RzComboBox2Select(Sender: TObject);
begin
     dbcomponent.DataModule5.Baygani_Folder.close;
     dbcomponent.DataModule5.Baygani_Folder.DeleteWhere;
     dbcomponent.DataModule5.Baygani_Folder.AddWhere('folder_name ='+RzComboBox2.Text);
     dbcomponent.DataModule5.Baygani_Folder.Open;
     dbcomponent.DataModule5.Baygani_Folder.Active:=true;
end;

end.
