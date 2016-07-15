object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tables Test'
  ClientHeight = 415
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    625
    415)
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 0
    Width = 625
    Height = 256
    Align = alTop
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnvgr1: TDBNavigator
    Left = 184
    Top = 262
    Width = 240
    Height = 25
    Anchors = [akTop]
    TabOrder = 1
    ExplicitLeft = 240
  end
  object btn1: TButton
    Left = 542
    Top = 368
    Width = 75
    Height = 39
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    TabOrder = 2
    OnClick = btn1Click
    ExplicitLeft = 656
    ExplicitTop = 426
  end
  object RadioGroup1: TRadioGroup
    Left = 17
    Top = 292
    Width = 185
    Height = 105
    Anchors = [akLeft, akBottom]
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Access Database'
      'SQL Database')
    TabOrder = 3
    OnClick = RadioGroup1Click
    ExplicitTop = 350
  end
  object btn2: TButton
    Left = 542
    Top = 312
    Width = 75
    Height = 39
    Anchors = [akRight, akBottom]
    Caption = 'Delete'
    TabOrder = 4
    OnClick = btn2Click
    ExplicitLeft = 656
    ExplicitTop = 370
  end
end
