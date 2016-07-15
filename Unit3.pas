unit Unit3;

interface

uses
  DMUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ADODB;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    qry1: TADOQuery;
    qry1FirstName: TWideStringField;
    qry1SecondName: TWideStringField;
    qry1ThirdName: TWideStringField;
    qry1EGN: TWideStringField;
    qry1City: TWideStringField;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  qry1.Parameters.FindParam('EGN').Value := StrToFloat(edt1.Text);
  qry1.ExecSQL;
  Form3.Close;

end;

end.
