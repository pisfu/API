object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 337
  ClientWidth = 635
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
  object Button1: TButton
    Left = 336
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Belt-Type'
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 16
    Top = 106
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Dp'
  end
  object ComboBox3: TComboBox
    Left = 16
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'Angle'
    OnChange = ComboBox3Change
    Items.Strings = (
      '34'
      '36'
      '38')
  end
  object ListBox1: TListBox
    Left = 408
    Top = 22
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      '50'
      '63'
      '71'
      '80'
      '90'
      '100'
      '112'
      '125'
      '140'
      '160'
      '180'
      '200'
      '224'
      '250'
      '280'
      '315'
      '355'
      '400'
      '450'
      '500')
    TabOrder = 4
  end
  object ComboBox4: TComboBox
    Left = 16
    Top = 140
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Material'
    Items.Strings = (
      #1063#1091#1075#1091#1085
      #1057#1090#1072#1083#1100)
  end
  object LabeledEdit1: TLabeledEdit
    Left = 16
    Top = 184
    Width = 121
    Height = 21
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'LabeledEdit1'
    TabOrder = 6
    Text = '15'
  end
end
