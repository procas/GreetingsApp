﻿unit FirstProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Str10 = string[10];
  Weathers = (Warm, Sunny, Cold, Freezing, Cloudy);
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    WeatherLabel: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    //procedure WeatherLabelClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure ShowNullError();
begin
     ShowMessage('You forgot to enter text!');
end;

function Greet(msg, name : string) : string;
begin
     if(name = '') then
        Greet := 'You must enter your name!'
     else
      begin
        Greet := msg + ' ' + name +'!';
        Form1.Label3.Caption := 'Greetings, '+name+'!';
        Form1.Panel1.Visible := true;
        Form1.WeatherLabel.Visible := true;
      end;
end;

function GetWeatherGreeting(weather:Weathers) : string;
var
    greeting:string;
begin
    case (weather) of
      Sunny : greeting := 'Take an umbrella';
      Cold : greeting := 'Wear a light jacket';
      Freezing: greeting := 'Wear an overcoat🧥';
      Cloudy : greeting := 'Watch out for the rains!☔';
      Warm : greeting := 'There is a pleasant weather outside, have a great day!'
    end;
    result := greeting;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
       ShowMessage(GetWeatherGreeting(Warm));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
      ShowMessage(GetWeatherGreeting(Freezing));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    var name := Form1.Edit1.Text;
    ShowMessage(Greet('Welcome', name));
end;





end.
