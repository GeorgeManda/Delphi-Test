unit Unit1;

interface

uses
  Unit3, DMUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    dbgrd1: TDBGrid;
    dbnvgr1: TDBNavigator;
    btn1: TButton;
    RadioGroup1: TRadioGroup;
    btn2: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i : Integer;

implementation
uses Unit2;
{$R *.dfm}
procedure TForm1.btn1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
//       if Form1.dbgrd1.DataSource = DataModule2.ds1 then
//       begin
//       for i := 1 to DataModule2.tbl1.RecordCount do
//          begin
//            if i = DataModule2.tbl1.Bookmark then
//            begin
//                DataModule2.tbl1.DeleteRecords(i);
//            end
//            else Continue;
//          end
//       end
//       else
//       begin
//        for i := 1 to DataModule2.tbl2.Eof do
//          begin
//            if i = DataModule2.tbl2.Bookmark then
//              begin
//                DataModule2.tbl2.DeleteRecords(i);
//              end
//            else Continue;
//          end;
//       end;
      Form3.ShowModal;
     DataModule2.tbl1.Close;
     DataModule2.tbl1.Open;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form1.RadioGroup1.ItemIndex := 0;
  if Form1.RadioGroup1.ItemIndex = 0 then
  begin
    DataModule2.tbl1.Connection.Connected := true;
  end;
  if DataModule2.tbl1.Connection.Connected = true then
  begin
    DataModule2.tbl1.Open;
  end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  if Form1.RadioGroup1.ItemIndex = 0 then
  begin
    DataModule2.tbl1.Open;
    DataModule2.tbl2.Close;
    Form1.dbgrd1.DataSource := DataModule2.ds1;
    Form1.dbnvgr1.DataSource :=DataModule2.ds1;
    DataModule2.tbl1.Open;
  end
  else
  begin
    DataModule2.tbl1.Close;
    DataModule2.tbl2.Open;
    Form1.dbgrd1.DataSource := DataModule2.ds2;
    Form1.dbnvgr1.DataSource :=DataModule2.ds2;
    DataModule2.tbl2.Open;
  end;
end;

end.
