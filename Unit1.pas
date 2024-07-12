unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Button6: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure posisiAwal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit6Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Enabled := False;
  Button2.Enabled := True;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := True;
end;

procedure TForm1.posisiAwal;
begin
  bersih;
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := False;
end;

procedure TForm1.bersih;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiAwal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      ShowMessage('Nama Kustomer Tidak Boleh Kosong');
    end else
    if DataModule2.ZKustomer.Locate('name',Edit2.Text,[]) then
    begin
      ShowMessage('Nama Kustomer'+Edit2.Text+'Sudah Ada Didalam Sistem');
    end else
    begin
      with DataModule2.ZKustomer do
      begin
        SQL.Clear;
        SQL.Add('insert into kustomer values(null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+ComboBox1.SelText+'")');
        ExecSQL;
        SQL.Clear;
        SQL.Add('select * from kustomer');
        Open;
      end;
      ShowMessage('Data Berhasil Disimpan');
      posisiAwal;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Edit2.Text = '' then
  begin
    ShowMessage('Nama kustomer Tidak Boleh Kosong');
  end else
  if Edit2.Text = DataModule2.ZKustomer.Fields[2].AsString then
  begin
    ShowMessage('Nama kustomer '+Edit2.Text+'Tidak Ada Perubahan');
  end else
  begin
    with DataModule2.ZKustomer do
    begin
      SQL.Clear;
      SQL.Add('update kustomer set nik="'+Edit1.Text+'", name="'+Edit2.Text+'", telp="'+Edit3.Text+'", email="'+Edit4.Text+'", alamat="'+Edit5.Text+'", member="'+comboBox1.text+'" where id="'+a+'"');
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil Diupdate');
    posisiAwal;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
    with DataModule2.ZKustomer do
    begin
      SQL.Clear;
      SQL.Add('delete from kustomer where id="'+a+'"');
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from kustomer');
      Open;
    end;
    ShowMessage('Data Berhasil DiDelete');
  end else
  begin
    ShowMessage('Data Batal DiDelete');
  end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text := DataModule2.ZKustomer.Fields[2].AsString;
  a:= DataModule2.ZKustomer.Fields[0].AsString;
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := False;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  with DataModule2.ZKustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from kustomer where name like "%'+Edit6.Text+'%"');
    Open;
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'Yes' then
  begin
    label9.Caption := '10%';
  end else
  begin
    label9.Caption := '5%';
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := False;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
