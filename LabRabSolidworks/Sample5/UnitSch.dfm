object FormGenerator: TFormGenerator
  Left = 230
  Top = 451
  Width = 470
  Height = 400
  Caption = 'Generator V2'
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 470
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Raschet: TButton
    Left = 8
    Top = 336
    Width = 241
    Height = 25
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 0
    OnClick = RaschetClick
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 457
    Height = 241
    ColCount = 3
    FixedCols = 0
    RowCount = 8
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
    ColWidths = (
      81
      248
      122)
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 248
    Width = 241
    Height = 81
    Caption = #1056#1072#1079#1084#1077#1088#1099' '#1087#1083#1072#1089#1090#1080#1085#1099
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 164
      Height = 13
      Caption = #1040#1082#1090#1080#1074#1085#1072#1103' '#1076#1083#1080#1085#1072' '#1087#1088#1086#1084#1077#1078#1091#1090#1082#1072'......'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 163
      Height = 13
      Caption = #1058#1086#1083#1097#1080#1085#1072' '#1079#1091#1073#1094#1072' '#1089#1090#1072#1090#1086#1088#1072'..............'
    end
    object Edit1: TEdit
      Left = 168
      Top = 16
      Width = 65
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 168
      Top = 48
      Width = 65
      Height = 21
      TabOrder = 1
    end
  end
  object ModelerButton: TButton
    Left = 256
    Top = 336
    Width = 201
    Height = 25
    Caption = #1052#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 3
    OnClick = ModelerButtonClick
  end
  object ModelSelector: TRadioGroup
    Left = 256
    Top = 248
    Width = 201
    Height = 81
    Caption = #1057#1090#1088#1086#1080#1090#1100' '#1084#1086#1076#1077#1083#1100
    ItemIndex = 1
    Items.Strings = (
      #1055#1083#1072#1089#1090#1080#1085#1099
      #1054#1073#1084#1086#1090#1082#1080
      #1057#1073#1086#1088#1082#1072)
    TabOrder = 4
  end
end
