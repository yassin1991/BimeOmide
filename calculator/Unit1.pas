unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Mask, RzEdit;

type
  TForm1 = class(TForm)
    RzEdit1: TRzEdit;
    RzGroupBox1: TRzGroupBox;
    RzButton3: TRzButton;
    RzButton2: TRzButton;
    RzButton1: TRzButton;
    RzButton6: TRzButton;
    RzButton5: TRzButton;
    RzButton4: TRzButton;
    RzButton9: TRzButton;
    RzButton8: TRzButton;
    RzButton7: TRzButton;
    RzGroupBox2: TRzGroupBox;
    RzButton11: TRzButton;
    RzButton14: TRzButton;
    RzButton17: TRzButton;
    RzButton12: TRzButton;
    RzGroupBox3: TRzGroupBox;
    RzButton0: TRzButton;
    RzButton10: TRzButton;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
    procedure RzButton5Click(Sender: TObject);
    procedure RzButton6Click(Sender: TObject);
    procedure RzButton7Click(Sender: TObject);
    procedure RzButton8Click(Sender: TObject);
    procedure RzButton9Click(Sender: TObject);
    procedure RzButton0Click(Sender: TObject);
    procedure RzButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RzButton0Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'0';
end;

procedure TForm1.RzButton10Click(Sender: TObject);
begin
 RzEdit1.Text:='';
end;

procedure TForm1.RzButton1Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'1';
end;

procedure TForm1.RzButton2Click(Sender: TObject);
begin
 RzEdit1.Text:=RzEdit1.Text+'2';
end;

procedure TForm1.RzButton3Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'3';
end;

procedure TForm1.RzButton4Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'4';
end;

procedure TForm1.RzButton5Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'5';
end;

procedure TForm1.RzButton6Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'6';
end;

procedure TForm1.RzButton7Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'7';
end;

procedure TForm1.RzButton8Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'8';
end;

procedure TForm1.RzButton9Click(Sender: TObject);
begin
RzEdit1.Text:=RzEdit1.Text+'9';
end;

end.
