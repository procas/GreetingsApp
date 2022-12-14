unit FirstProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  Str10 = string[10];
  Weathers = (Warm, Sunny, Cold, Freezing, Cloudy);
  Flower = (Tulip, Lilly, Merrigold, Rose);
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    WarmButton: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    WeatherLabel: TLabel;
    Panel2: TPanel;
    TulipButton: TButton;
    RoseButton: TButton;
    LillyButton: TButton;
    MerrigoldButton: TButton;
    FlowerLabel: TLabel;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    //procedure WeatherLabelClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WarmButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    type
    Str30 = string[30];
    Str100 = string[100];
    Card = record
      name : Str30;
      greeting : Str100;
      thanks: string;
      price: double;
      cost: string;
      image: Flower;
    end;

    var Cards : array[1..5] of Card;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
  sLineBreak = {$IFDEF LINUX} AnsiChar(#10) {$ENDIF}
               {$IFDEF MSWINDOWS} AnsiString(#13#10) {$ENDIF};

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
        Form1.Panel2.Visible := true;
        Form1.FlowerLabel.Visible := true;
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

procedure TForm1.Button4Click(Sender: TObject);
begin
      ShowMessage(GetWeatherGreeting(Freezing));
end;

procedure TForm1.WarmButtonClick(Sender: TObject);
begin
      ShowMessage(GetWeatherGreeting(Warm));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Cards[1].name := 'Tulip Card';
    Cards[1].greeting := 'Since you love tulips, here is a tulips greeting card for you!';
    Cards[1].price := 10;
    Cards[1].cost := '$'+ FloatToStr(Cards[1].price);

    Cards[2].name := 'Rose Card';
    Cards[2].greeting := 'Since you love roses, here is a rose greeting card for you!';
    Cards[2].price := 50;
    Cards[2].cost := '$'+ FloatToStr(Cards[2].price);

    Cards[3].name := 'Lilly Card';
    Cards[3].greeting := 'Since you love roses, here is a rose greeting card for you!';
    Cards[3].price := 50;
    Cards[3].cost := '$'+ FloatToStr(Cards[3].price);

    Cards[4].name := 'Marigold Card';
    Cards[4].greeting := 'Since you love marigolds, here is a marigold greeting card for you!';
    Cards[4].price := 100;
    Cards[4].cost := '$'+ FloatToStr(Cards[4].price);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    var name := Form1.Edit1.Text;
    ShowMessage(Greet('Welcome', name));
end;

var anArray : array[1..10] of string;



procedure TForm1.Button1Click(Sender: TObject);
begin
       Image1.Picture.LoadFromFile('C:\Code\GreetingsApp\Images\tulip.png');
       ShowMessage(Cards[1].name+ sLineBreak + Cards[1].greeting+sLineBreak+Cards[1].cost);

end;

end.
