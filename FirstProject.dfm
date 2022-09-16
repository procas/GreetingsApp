object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 422
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 208
    Top = 88
    Width = 145
    Height = 14
    Caption = 'Welcome to GreetingsApp!!'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -12
    Font.Name = 'Roboto Bk'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 109
    Top = 147
    Width = 101
    Height = 15
    Caption = 'What'#39's your name?'
  end
  object Label3: TLabel
    Left = 256
    Top = 108
    Width = 3
    Height = 15
  end
  object Edit1: TEdit
    Left = 216
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 176
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Change Text'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Greet Me!'
    TabOrder = 2
    OnClick = Button2Click
  end
end
