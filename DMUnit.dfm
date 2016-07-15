object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 416
  Width = 597
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Se' +
      'ttings\User\Desktop\Delphi Tests\First Data testing\db1.mdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = con1BeforeConnect
    Left = 80
    Top = 144
  end
  object sqltbl1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=Qwerty123;Persist Security Info=True' +
      ';User ID=sa;Data Source=SQLServer;Initial Catalog=TestDataBase1'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 80
    Top = 224
  end
  object tbl1: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select* '
      'from '
      'Table1')
    Left = 152
    Top = 144
    object tbl1FirstName: TWideStringField
      FieldName = 'First Name'
    end
    object tbl1SecondName: TWideStringField
      FieldName = 'Second Name'
    end
    object tbl1ThirdName: TWideStringField
      FieldName = 'Third Name'
    end
    object tbl1EGN: TWideStringField
      FieldName = 'EGN'
    end
    object tbl1City: TWideStringField
      FieldName = 'City'
    end
  end
  object tbl2: TADOQuery
    Connection = sqltbl1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from'
      'Table_1')
    Left = 152
    Top = 224
    object tbl2FirstName: TStringField
      FieldName = 'First Name'
    end
    object tbl2SecondName: TStringField
      FieldName = 'Second Name'
    end
    object tbl2LastName: TWideStringField
      FieldName = 'Last Name'
      FixedChar = True
    end
    object tbl2EGN: TIntegerField
      FieldName = 'EGN'
    end
    object tbl2City: TStringField
      FieldName = 'City'
    end
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 208
    Top = 144
  end
  object ds2: TDataSource
    DataSet = tbl2
    Left = 208
    Top = 224
  end
end
