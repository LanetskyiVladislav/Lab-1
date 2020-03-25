unit Valid_2_lab2_lanetskiy;

interface

function ValNum (St : string) : string;
function Diap (Count : extended) : boolean;

implementation
function ValNum (st : string) : string;
var
 i, znak : byte;
 NumSTR : string;
begin
 NumSTR := '1234567890,.-';
 for i:=1 to length(st) do
 begin
   if (pos(st[i], NumSTR) = 0) then
   begin ValNum:='ERR'; exit; end;
 end;
znak := 0;
 for i:=1 to length(st) do
 begin
   if (((st[i] = ',') or (st[i] = '.')) and (znak > 0)) then
   begin ValNum := 'ERR'; exit; end;
   if st[i] = ',' then znak := i;
   if st[i] = '.' then begin st[i] := ','; znak := i; end;
 end;
   if st[1] = ',' then
   begin ValNum := 'ERR'; exit; end;
   ValNum := st;
end;


function Diap (Count : extended) : boolean;
begin
 if (Count < -709) or (Count > 709) then Diap := false
 else Diap := true;
end;



end.

