unit Unit2;

interface

uses
  Unit1, DMUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    AddPerson: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure AddPersonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AddPersonClick(Sender: TObject);
begin

  with DataModule2 do
  if Form1.RadioGroup1.ItemIndex = 0 then
    begin
      if tbl1.Locate('EGN', edt4.Text, []) then
      begin
        ShowMessage('EGN exists.');
        exit;
      end;

        if Length(Form2.edt4.Text) =10 then
              begin
                  tbl1.Insert;
                  tbl1['First Name'] := Form2.edt1.Text;
                  tbl1['Second Name'] := Form2.edt2.Text;
                  tbl1['Third Name'] := Form2.edt3.Text;
                  tbl1['EGN'] := Form2.edt4.Text;
                  tbl1['City'] := Form2.edt5.Text;
                  tbl1.Post;
                  Form2.Close;
              end
        else
              begin
                  ShowMessage('Personal IDN must be 10 symbols');
              end;
    end
  else
  begin
          if tbl2.Locate('EGN', edt4.Text, []) then
        begin
          ShowMessage('EGN exists.');
          exit;
        end;


        if Length(Form2.edt4.Text) =10 then
              begin
                  tbl2.Insert;
                  tbl2['First Name'] := Form2.edt1.Text;
                  tbl2['Second Name'] := Form2.edt2.Text;
                  tbl2['Last Name'] := Form2.edt3.Text;
                  tbl2['EGN'] := Form2.edt4.Text;
                  tbl2['City'] := Form2.edt5.Text;
                  tbl2.Post;
                  Form2.Close;
              end
        else
              begin
                  ShowMessage('Personal IDN must be 10 symbols');
              end;
    end;
end;

end.
