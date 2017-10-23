object Form1: TForm1
  Left = 251
  Top = 154
  Width = 385
  Height = 292
  ActiveControl = Edit4
  BorderIcons = [biSystemMenu]
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1082#1086#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1082#1086#1083#1077#1089#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 238
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 375
      Height = 236
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        object Label1: TLabel
          Left = 15
          Top = 8
          Width = 38
          Height = 13
          Caption = #1052#1086#1076#1091#1083#1100
        end
        object Label4: TLabel
          Left = 15
          Top = 40
          Width = 72
          Height = 13
          Caption = #1064#1080#1088#1080#1085#1072' '#1074#1077#1085#1094#1072
        end
        object Label2: TLabel
          Left = 16
          Top = 80
          Width = 54
          Height = 13
          Caption = #1057#1084#1077#1097#1077#1085#1080#1077
        end
        object Label3: TLabel
          Left = 152
          Top = 8
          Width = 98
          Height = 13
          Caption = #1059#1075#1086#1083' '#1076#1077#1083#1080#1090'. '#1082#1086#1085#1091#1089#1072
        end
        object Label5: TLabel
          Left = 152
          Top = 40
          Width = 70
          Height = 13
          Caption = #1063#1080#1089#1083#1086' '#1079#1091#1073#1100#1077#1074
        end
        object Label11: TLabel
          Left = 152
          Top = 77
          Width = 121
          Height = 13
          Caption = #1052#1077#1078#1086#1089#1077#1074#1086#1077' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
        end
        object Edit4: TEdit
          Left = 96
          Top = 5
          Width = 41
          Height = 21
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '5.8'
          OnChange = Edit4Change
          OnKeyPress = FormKeyPress
        end
        object Edit1: TEdit
          Left = 96
          Top = 72
          Width = 41
          Height = 21
          TabOrder = 1
          Text = '0.1'
        end
        object Edit3: TEdit
          Left = 287
          Top = 40
          Width = 41
          Height = 21
          Cursor = crHandPoint
          TabOrder = 2
          Text = '12'
          OnChange = Edit4Change
          OnKeyPress = FormKeyPress
        end
        object Edit6: TEdit
          Left = 287
          Top = 8
          Width = 41
          Height = 21
          Cursor = crHandPoint
          TabOrder = 3
          Text = '33.69'
          OnChange = Edit4Change
          OnKeyPress = FormKeyPress
        end
        object Edit7: TEdit
          Left = 96
          Top = 40
          Width = 41
          Height = 21
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '21'
          OnChange = Edit4Change
          OnKeyPress = FormKeyPress
        end
        object Button1: TButton
          Left = 72
          Top = 120
          Width = 186
          Height = 25
          Cursor = crHandPoint
          Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1074' SolidWorks'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
        object Edit11: TEdit
          Left = 287
          Top = 72
          Width = 41
          Height = 21
          TabOrder = 6
          Text = '64.899'
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        ImageIndex = 1
        object Label6: TLabel
          Left = 15
          Top = 16
          Width = 98
          Height = 13
          Caption = #1058#1072#1085#1075#1077#1085#1094' '#1089#1084#1077#1097#1077#1085#1080#1077
        end
        object Label10: TLabel
          Left = 15
          Top = 56
          Width = 105
          Height = 13
          Caption = #1059#1075#1086#1083' '#1087#1088#1086#1092#1080#1083#1103' '#1088#1077#1081#1082#1080
        end
        object Label7: TLabel
          Left = 15
          Top = 96
          Width = 65
          Height = 13
          Caption = #1050#1086#1083'-'#1074#1086' '#1090#1086#1095#1077#1082
        end
        object Label8: TLabel
          Left = 15
          Top = 136
          Width = 19
          Height = 13
          Caption = 'nZ1'
        end
        object Label9: TLabel
          Left = 15
          Top = 176
          Width = 47
          Height = 13
          Caption = #1058#1086#1095#1085#1086#1089#1090#1100
        end
        object Edit10: TEdit
          Left = 136
          Top = 51
          Width = 35
          Height = 21
          TabOrder = 0
          Text = '20'
        end
        object Edit2: TEdit
          Left = 136
          Top = 16
          Width = 35
          Height = 21
          TabOrder = 1
          Text = '0.1'
        end
        object Edit9: TEdit
          Left = 136
          Top = 169
          Width = 35
          Height = 21
          TabOrder = 2
          Text = '1'
        end
        object Edit8: TEdit
          Left = 136
          Top = 129
          Width = 35
          Height = 21
          TabOrder = 3
          Text = '5'
        end
        object Edit5: TEdit
          Left = 136
          Top = 90
          Width = 35
          Height = 21
          TabOrder = 4
          Text = '20'
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 65528
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
        OnClick = Button1Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
  end
end
