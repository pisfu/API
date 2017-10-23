object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 337
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 29
    Width = 79
    Height = 13
    Caption = #1044#1080#1072#1084#1077#1090#1088' '#1096#1082#1080#1074#1072
  end
  object Label2: TLabel
    Left = 32
    Top = 93
    Width = 73
    Height = 13
    Caption = #1064#1080#1088#1080#1085#1072' '#1088#1077#1084#1085#1103
  end
  object Button1: TButton
    Left = 536
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = '40'
    Items.Strings = (
      '40'
      '45'
      '50'
      '56'
      '63'
      '71')
  end
  object ComboBox2: TComboBox
    Left = 32
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = '10'
    Items.Strings = (
      '10'
      '15'
      '20'
      '25'
      '30'
      '40'
      '50')
  end
  object LabeledEdit1: TLabeledEdit
    Left = 32
    Top = 160
    Width = 121
    Height = 21
    EditLabel.Width = 109
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1086#1089#1072#1076#1086#1095#1085#1099#1081' '#1076#1080#1072#1084#1077#1090#1088
    TabOrder = 3
    Text = '10'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 32
    Top = 200
    Width = 121
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1083#1080#1085#1085#1072
    TabOrder = 4
    Text = '15'
  end
  object LabeledEdit3: TLabeledEdit
    Left = 32
    Top = 240
    Width = 121
    Height = 21
    EditLabel.Width = 101
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1086#1089#1072#1076#1086#1095#1085#1072#1103' '#1076#1083#1080#1085#1085#1072
    TabOrder = 5
    Text = '5'
  end
  object LabeledEdit4: TLabeledEdit
    Left = 32
    Top = 288
    Width = 121
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = #1056#1072#1076#1080#1091#1089
    TabOrder = 6
    Text = '1'
  end
end
