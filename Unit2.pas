unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, UniProvider,
  PostgreSQLUniProvider, DBAccess, Uni, MemDS;

type
  TForm2 = class(TForm)
    Button1: TButton;
    UniConnection1: TUniConnection;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    DBGridEh1: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
