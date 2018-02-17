object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 152
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Word'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Excel-R1C1'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Excel-A1'
    TabOrder = 2
    OnClick = Button3Click
  end
end
