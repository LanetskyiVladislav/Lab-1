unit lab1_task1_lanetskiy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, valid_1;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  VarTime : TDateTime;
  AZStr : string[52];
begin
  AZStr := 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  VarTime := Now;
  randomize;
  if ((StrToInt(FormatDateTime('nn',VarTime)) mod 2) = 0) then
  label1.caption := 'Випадкове число від 1 до 10: ' + IntToStr(random(9)+1)
  else
  label1.caption := 'Випадковий символ латиниці: ' + AZStr[random(51)+1];
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Str : String;
begin
  Str := edit1.text;
  edit1.text := #0;
  if Symv(Str) = false then
  begin label1.caption := 'Помилка. Некоректний символ.'; exit; end;
  label1.caption := #0;
  if Str = 'Сувернітет' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'України' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'поширюється' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'на' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'всю' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'її' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'територію' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'Україна' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'є' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'унітарною' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'державою' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'Територія' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'в' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'межах' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'існуючого' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'кордону' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'цілісною' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'і' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if Str = 'недоторканною' then label1.caption := 'Слово є частиною статті 2 КУ.';
  if label1.caption = #0 then label1.caption := 'Слово відсутнє у статті 2 КУ.';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  showmessage('ПЗ для взаємодії з локальним часом та введеним словом. Розробив Ланецький Владислав у 2020 році у ВНЗ "ЦНТУ", м. Кропивницький.');
end;





end.

