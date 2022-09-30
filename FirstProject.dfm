object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Greetings App'
  ClientHeight = 422
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 223
    Top = 56
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
    Top = 115
    Width = 101
    Height = 15
    Caption = 'What'#39's your name?'
  end
  object Label3: TLabel
    Left = 241
    Top = 76
    Width = 3
    Height = 15
  end
  object WeatherLabel: TLabel
    Left = 241
    Top = 191
    Width = 106
    Height = 15
    Caption = 'How is the weather?'
    Visible = False
    WordWrap = True
  end
  object FlowerLabel: TLabel
    Left = 198
    Top = 280
    Width = 289
    Height = 15
    Caption = 'What kind of flower do you like?'
    Visible = False
    WordWrap = True
  end
  object Image1: TImage
    Left = 455
    Top = 48
    Width = 162
    Height = 129
  end
  object Edit1: TEdit
    Left = 232
    Top = 112
    Width = 137
    Height = 23
    TabOrder = 0
  end
  object Button2: TButton
    Left = 256
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Greet Me!'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 109
    Top = 212
    Width = 378
    Height = 41
    TabOrder = 2
    Visible = False
    object WarmButton: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Warm'
      TabOrder = 0
      OnClick = WarmButtonClick
    end
    object Button3: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sunny'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Freezing'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 265
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Stormy'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 109
    Top = 308
    Width = 378
    Height = 41
    TabOrder = 3
    Visible = False
    object TulipButton: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Tulip'
      TabOrder = 0
      OnClick = Button1Click
    end
    object RoseButton: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Rose'
      TabOrder = 1
    end
    object LillyButton: TButton
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Lilly'
      TabOrder = 2
      OnClick = Button4Click
    end
    object MerrigoldButton: TButton
      Left = 265
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Marigold'
      TabOrder = 3
    end
  end
end
