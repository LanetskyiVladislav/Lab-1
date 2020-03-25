unit Valid_1_lab1_lanetskiy;    ;

{$mode objfpc}{$H+}

interface

function Symv (var St : String) : boolean;

implementation

function Symv (var St : String) : boolean;
var
  Tr : string;
  i : byte;
begin
Tr := 'АаБбВвГгДдЕеЖжЗзИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЬьЮюЯяЄєЇїІіҐґ';
for i:=1 to length(st) do
 begin
  if (pos(st[i], tr)) = 0 then begin
    Symv:=false; exit; end;
  if (i = length(st)) and (pos(st[i], tr) <> 0) then
    Symv:=True;
 end;
end;

end.

