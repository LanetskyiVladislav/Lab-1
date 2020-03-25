unit lab1_task2_lanetskiy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, math,
  valid_2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
const ee = 2.718;
var
  x,y,z,Q : extended;
  Temp : string;

begin
  Temp := edit1.text;
  if ValNum(Temp) = 'ERR' then
  begin label1.caption := 'Некоректне число Х.'; exit; end
  else x := StrToFloat(ValNum(Temp));
  Temp := edit2.text;
  if ValNum(Temp) = 'ERR' then
  begin label1.caption := 'Некоректне число Y.'; exit; end
  else y := StrToFloat(ValNum(Temp));
  Temp := edit3.text;
  if ValNum(Temp) = 'ERR' then
  begin label1.caption := 'Некоректне число Z.'; exit; end
  else z := StrToFloat(ValNum(Temp));

  if diap(x) = false then
  begin label1.caption := 'Х не входить в діапазон (від -709 до 709)'; exit; end;
  if diap(y) = false then
  begin label1.caption := 'Y не входить в діапазон (від -709 до 709)'; exit; end;
  if diap(z) = false then
  begin label1.caption := 'Z не входить в діапазон (від -709 до 709)'; exit; end;

  Q :=  {1}(sqrt( abs( x*y-(power(z,3) ) ))/2 ){1} + {2}((power(ee,abs(x))) + ((y*z)/(3*x)));{2}
  label1.caption := 'Результат: ' + FloatToStr(Q);


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  showmessage('ПЗ для знаходження результату по формулі. Розробив Ланецький Владислав у 2020 році у ВНЗ "ЦНТУ", м. Кропивницький.');
end;

end.

