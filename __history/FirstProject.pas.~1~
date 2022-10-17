unit FirstProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
      end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
    if Form1.Edit1.Text = '' then
        ShowNullError()
    else
        Form1.Edit1.Text:= 'Text changed!';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    var name := Form1.Edit1.Text;
    ShowMessage(Greet('Welcome', name));
end;

end.
