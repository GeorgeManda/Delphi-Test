unit DMUnit;

interface

uses
  SysUtils, Classes, DB, ADODB,  Forms, ShellApi, Windows ;

type
  TDataModule2 = class(TDataModule)
    con1: TADOConnection;
    sqltbl1: TADOConnection;
    tbl1: TADOQuery;
    tbl2: TADOQuery;
    tbl1FirstName: TWideStringField;
    tbl1SecondName: TWideStringField;
    tbl1ThirdName: TWideStringField;
    tbl1EGN: TWideStringField;
    tbl1City: TWideStringField;
    tbl2FirstName: TStringField;
    tbl2SecondName: TStringField;
    tbl2LastName: TWideStringField;
    tbl2EGN: TIntegerField;
    tbl2City: TStringField;
    ds1: TDataSource;
    ds2: TDataSource;
    procedure con1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

procedure TDataModule2.con1BeforeConnect(Sender: TObject);
var
vsConString :string;
begin
    vsConString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    ExtractFileDir(Application.ExeName) +
    '\db1.mdb;Persist Security Info=False';

    con1.ConnectionString := vsConString;
end;

end.
