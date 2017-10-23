object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 452
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 389
    Top = 14
    Width = 156
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1088#1072#1089#1089#1095#1080#1090#1072#1085#1085#1086#1081' '#1087#1077#1088#1077#1076#1072#1095#1080
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 383
    Height = 452
    Align = alLeft
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button2: TButton
    Left = 389
    Top = 209
    Width = 75
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 389
    Top = 41
    Width = 145
    Height = 21
    TabOrder = 2
    OnSelect = ComboBox1Select
  end
  object RadioGroup1: TRadioGroup
    Left = 389
    Top = 80
    Width = 185
    Height = 105
    Caption = #1058#1080#1087' '#1096#1082#1080#1074#1072
    Items.Strings = (
      #1064#1082#1080#1074' '#1086#1073#1099#1095#1085#1099#1081
      #1064#1082#1080#1074' '#1073#1072#1073#1072#1088#1072#1085#1086#1086#1073#1088#1072#1079#1085#1099#1081
      #1064#1082#1080#1074' C-'#1074#1080#1076#1085#1099#1081)
    TabOrder = 3
  end
end
