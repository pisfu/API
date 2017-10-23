object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1095#1077#1088#1090#1077#1078#1072' '#1087#1083#1072#1085#1077#1090#1072#1088#1085#1086#1081' '#1087#1077#1088#1077#1076#1072#1095#1080
  ClientHeight = 307
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 15
    Top = 57
    Width = 5
    Height = 13
    Caption = 's'
  end
  object Label5: TLabel
    Left = 8
    Top = 132
    Width = 12
    Height = 13
    Caption = 'bh'
  end
  object Label6: TLabel
    Left = 8
    Top = 159
    Width = 12
    Height = 13
    Caption = 'b6'
  end
  object Label7: TLabel
    Left = 8
    Top = 113
    Width = 10
    Height = 13
    Caption = 'bt'
  end
  object Label8: TLabel
    Left = 15
    Top = 83
    Width = 6
    Height = 13
    Caption = 'a'
  end
  object Label9: TLabel
    Left = 111
    Top = 81
    Width = 20
    Height = 13
    Caption = 'dw1'
  end
  object Label10: TLabel
    Left = 15
    Top = 30
    Width = 5
    Height = 13
    Caption = 'c'
  end
  object Label3: TLabel
    Left = 111
    Top = 110
    Width = 20
    Height = 13
    Caption = 'dw2'
  end
  object Label11: TLabel
    Left = 111
    Top = 135
    Width = 20
    Height = 13
    Caption = 'dw3'
  end
  object Label12: TLabel
    Left = 111
    Top = 162
    Width = 20
    Height = 13
    Caption = 'dw4'
  end
  object Label1: TLabel
    Left = 125
    Top = 30
    Width = 6
    Height = 13
    Caption = 'h'
  end
  object Label13: TLabel
    Left = 125
    Top = 62
    Width = 6
    Height = 13
    Caption = 'q'
  end
  object Edit4: TEdit
    Left = 40
    Top = 54
    Width = 65
    Height = 21
    TabOrder = 0
    Text = '14'
    OnKeyPress = Edit1KeyPress
  end
  object Edit5: TEdit
    Left = 40
    Top = 135
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '12'
    OnKeyPress = Edit1KeyPress
  end
  object Edit6: TEdit
    Left = 40
    Top = 162
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '10'
    OnKeyPress = Edit1KeyPress
  end
  object Edit7: TEdit
    Left = 40
    Top = 108
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '12'
    OnKeyPress = Edit1KeyPress
  end
  object Edit8: TEdit
    Left = 40
    Top = 81
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '20'
    OnKeyPress = Edit1KeyPress
  end
  object Edit9: TEdit
    Left = 137
    Top = 81
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '50'
    OnKeyPress = Edit1KeyPress
  end
  object Edit10: TEdit
    Left = 40
    Top = 27
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '14'
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 137
    Top = 108
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '50'
    OnKeyPress = Edit1KeyPress
  end
  object Edit11: TEdit
    Left = 137
    Top = 135
    Width = 65
    Height = 21
    TabOrder = 8
    Text = '30'
    OnKeyPress = Edit1KeyPress
  end
  object Edit12: TEdit
    Left = 137
    Top = 162
    Width = 65
    Height = 21
    TabOrder = 9
    Text = '70'
    OnKeyPress = Edit1KeyPress
  end
  object Edit1: TEdit
    Left = 137
    Top = 27
    Width = 65
    Height = 21
    TabOrder = 10
    Text = '24'
    OnKeyPress = Edit1KeyPress
  end
  object Edit13: TEdit
    Left = 137
    Top = 54
    Width = 65
    Height = 21
    TabOrder = 11
    Text = '8'
    OnKeyPress = Edit1KeyPress
  end
  object Button2: TButton
    Left = 38
    Top = 242
    Width = 194
    Height = 25
    Caption = #1063#1077#1088#1090#1080#1090#1100' '#1074' SW'
    Default = True
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 40
    Top = 274
    Width = 192
    Height = 25
    Caption = #1063#1077#1088#1090#1080#1090#1100' '#1074' '#1050#1086#1084#1087#1072#1089#1077
    TabOrder = 13
    OnClick = Button1Click
  end
  object SD1: TSaveDialog
    DefaultExt = 'slddrw'
    FileName = #1063#1077#1088#1090#1077#1078
    Filter = #1063#1077#1088#1090#1077#1078'|(*.drw;*.slddrw)|*.drw,*.slddrw'
    FilterIndex = 0
    Left = 232
    Top = 128
  end
end
