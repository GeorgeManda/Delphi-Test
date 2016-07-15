object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 256
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 152
    Top = 112
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
    OnClick = btn1Click
  end
  object qry1: TADOQuery
    Connection = DataModule2.con1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EGN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'delete  from Table1'
      'where EGN =:EGN')
    Left = 72
    Top = 192
    object qry1FirstName: TWideStringField
      FieldName = 'First Name'
      Size = 50
    end
    object qry1SecondName: TWideStringField
      FieldName = 'Second Name'
      Size = 50
    end
    object qry1ThirdName: TWideStringField
      FieldName = 'Third Name'
      Size = 50
    end
    object qry1EGN: TWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object qry1City: TWideStringField
      FieldName = 'City'
      Size = 50
    end
  end
end
