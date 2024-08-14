object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 515
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DeleteButton: TButton
    Left = 352
    Top = 424
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 0
    OnClick = DeleteButtonClick
  end
  object AddButton: TButton
    Left = 144
    Top = 424
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddButtonClick
  end
  object SaveButton: TButton
    Left = 560
    Top = 424
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = SaveButtonClick
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Driver={ODBC Driver 17 for SQL Server};Server=DESKTOP-80VAQEO;Da' +
      'tabase=LibraryDB;Trusted_Connection=Yes;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 720
    Top = 32
  end
  object BooksTable: TADOTable
    Connection = ADOConnection1
    Left = 240
    Top = 96
  end
end
