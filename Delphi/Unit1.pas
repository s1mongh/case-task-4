unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    BooksTable: TADOTable;
    DeleteButton: TButton;
    AddButton: TButton;
    SaveButton: TButton;
    procedure DeleteButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.AddButtonClick(Sender: TObject);
begin
  BooksTable.Append;
end;

procedure TForm1.DeleteButtonClick(Sender: TObject);
begin
  if not BooksTable.IsEmpty then
    BooksTable.Delete;
end;

procedure TForm1.SaveButtonClick(Sender: TObject);
begin
  if BooksTable.State in [dsEdit, dsInsert] then
    BooksTable.Post;
end;


end.
