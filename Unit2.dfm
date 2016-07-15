object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Adder'
  ClientHeight = 190
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    699
    190)
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 5
    Width = 75
    Height = 13
    Alignment = taCenter
    Anchors = [akLeft, akTop, akBottom]
    Caption = '                Name'
  end
  object lbl2: TLabel
    Left = 145
    Top = 5
    Width = 99
    Height = 13
    Anchors = [akLeft, akTop, akBottom]
    Caption = '          Father'#39's Name'
  end
  object lbl3: TLabel
    Left = 280
    Top = 5
    Width = 81
    Height = 13
    Anchors = [akLeft, akTop, akBottom]
    Caption = '            Surname '
  end
  object lbl4: TLabel
    Left = 415
    Top = 5
    Width = 92
    Height = 13
    Anchors = [akLeft, akTop, akBottom]
    Caption = '          Personal IDN'
  end
  object lbl5: TLabel
    Left = 550
    Top = 5
    Width = 87
    Height = 13
    Anchors = [akLeft, akTop, akBottom]
    Caption = '          City of Birth'
  end
  object edt1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 145
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 280
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 415
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 550
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object AddPerson: TButton
    Left = 304
    Top = 64
    Width = 75
    Height = 25
    Caption = 'AddPerson'
    TabOrder = 5
    OnClick = AddPersonClick
  end
end
