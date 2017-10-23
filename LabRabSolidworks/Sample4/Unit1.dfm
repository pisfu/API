object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 393
  ClientWidth = 458
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
    Left = 31
    Top = 13
    Width = 93
    Height = 13
    Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1077#1088#1096#1080#1085#1099
  end
  object Label2: TLabel
    Left = 32
    Top = 61
    Width = 116
    Height = 13
    Caption = #1044#1077#1083#1080#1090#1077#1083#1100#1085#1099#1081' '#1076#1080#1072#1084#1077#1090#1088
  end
  object Label3: TLabel
    Left = 32
    Top = 109
    Width = 92
    Height = 13
    Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1087#1072#1076#1080#1085#1099
  end
  object Label4: TLabel
    Left = 32
    Top = 301
    Width = 142
    Height = 13
    Caption = #1059#1075#1086#1083' '#1085#1072#1082#1083#1086#1085#1072' '#1087#1088#1086#1092#1080#1083#1103' '#1079#1091#1073#1072
  end
  object Label5: TLabel
    Left = 32
    Top = 205
    Width = 63
    Height = 13
    Caption = #1042#1099#1089#1086#1090#1072' '#1079#1091#1073#1072
  end
  object Label6: TLabel
    Left = 32
    Top = 253
    Width = 106
    Height = 13
    Caption = #1063#1080#1089#1083#1086' '#1079#1091#1073#1100#1077#1074' '#1082#1086#1083#1077#1089#1072
  end
  object Label7: TLabel
    Left = 32
    Top = 157
    Width = 150
    Height = 13
    Caption = #1059#1075#1086#1083' '#1085#1072#1082#1083#1086#1085#1072' '#1079#1091#1073#1072' '#1087#1086' '#1074#1099#1089#1086#1090#1077
  end
  object Button1: TButton
    Left = 63
    Top = 353
    Width = 75
    Height = 25
    Caption = #1050#1086#1083#1077#1089#1086
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 150
    Height = 21
    TabOrder = 1
    Text = '400'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 32
    Top = 80
    Width = 150
    Height = 21
    TabOrder = 2
    Text = '380'
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 32
    Top = 128
    Width = 150
    Height = 21
    TabOrder = 3
    Text = '300'
    OnKeyPress = Edit1KeyPress
  end
  object Edit4: TEdit
    Left = 32
    Top = 176
    Width = 150
    Height = 21
    TabOrder = 4
    Text = '27,5'
    OnKeyPress = Edit1KeyPress
  end
  object Edit5: TEdit
    Left = 31
    Top = 224
    Width = 150
    Height = 21
    TabOrder = 5
    Text = '100'
    OnKeyPress = Edit1KeyPress
  end
  object Edit6: TEdit
    Left = 32
    Top = 274
    Width = 150
    Height = 21
    TabOrder = 6
    Text = '8'
  end
  object Edit7: TEdit
    Left = 32
    Top = 320
    Width = 150
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Button2: TButton
    Left = 272
    Top = 360
    Width = 75
    Height = 25
    Caption = #1064#1077#1089#1090#1077#1088#1085#1103
    TabOrder = 8
    OnClick = Button2Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 272
    Top = 32
    Width = 153
    Height = 21
    EditLabel.Width = 93
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1077#1088#1096#1080#1085#1099
    TabOrder = 9
    Text = '210'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 272
    Top = 80
    Width = 153
    Height = 21
    EditLabel.Width = 116
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1077#1083#1080#1090#1077#1083#1100#1085#1099#1081' '#1076#1080#1072#1084#1077#1090#1088
    TabOrder = 10
    Text = '190'
  end
  object LabeledEdit3: TLabeledEdit
    Left = 272
    Top = 128
    Width = 153
    Height = 21
    EditLabel.Width = 92
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1080#1072#1084#1077#1090#1088' '#1074#1087#1072#1076#1080#1085#1099
    TabOrder = 11
    Text = '110'
  end
  object LabeledEdit4: TLabeledEdit
    Left = 272
    Top = 176
    Width = 153
    Height = 21
    EditLabel.Width = 150
    EditLabel.Height = 13
    EditLabel.Caption = #1059#1075#1086#1083' '#1085#1072#1082#1083#1086#1085#1072' '#1079#1091#1073#1072' '#1087#1086' '#1074#1099#1089#1086#1090#1077
    TabOrder = 12
    Text = '27,5'
  end
  object LabeledEdit5: TLabeledEdit
    Left = 272
    Top = 224
    Width = 153
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1099#1089#1086#1090#1072' '#1079#1091#1073#1072
    TabOrder = 13
    Text = '20'
  end
  object LabeledEdit6: TLabeledEdit
    Left = 272
    Top = 272
    Width = 153
    Height = 21
    EditLabel.Width = 120
    EditLabel.Height = 13
    EditLabel.Caption = #1063#1080#1089#1083#1086' '#1079#1091#1073#1100#1077#1074' '#1096#1077#1089#1090#1077#1088#1085#1080
    TabOrder = 14
    Text = '4'
  end
  object RadioButton1: TRadioButton
    Left = 272
    Top = 314
    Width = 161
    Height = 17
    Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1073#1077#1079' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
    TabOrder = 15
  end
  object RadioButton2: TRadioButton
    Left = 272
    Top = 337
    Width = 153
    Height = 17
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
    Checked = True
    TabOrder = 16
    TabStop = True
  end
  object SD1: TSaveDialog
    DefaultExt = 'sldprt'
    FileName = #1044#1077#1090#1072#1083#1100
    Filter = #1044#1077#1090#1072#1083#1100' (*.prt;*.sldprt)|*.prt,*.sldprt'
    FilterIndex = 0
    Left = 216
    Top = 160
  end
end
