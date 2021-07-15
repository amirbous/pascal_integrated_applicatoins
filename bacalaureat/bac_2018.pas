program bac_2018;
uses crt;

var
C, i, j: integer;
P: array [1..20] of String;
T: array [1..50] of String;
Pers: string;

function valide(s:string): boolean;
var i: integer;
begin
if s = '' then valide := false
else if upcase(s[1]) <> s[1] then valide := false
else
begin
    for i:= 1 to length(s) do
    begin
        if not (upcase(s[i]) in ['A'..'Z']) then valide := false;

    end;
end;
end;
function chercher(Pers: String; P: array of String; C: integer): boolean;
var i: integer;
begin
chercher:= false;
for i:= 1 to C do
    begin
       if P[i] = Pers then chercher := true;
    end;

end;

begin
     repeat 
        writeln('donner le nom de personnage trouve dans le paquet p1');
        readln(P[1]);
    until valide(P[1]);
    {C:= 1;
    for i:= 2 to 50 do
        repeat
            writel('donner le nom du personnage trouver dans le paquet n', i, ' : ');
            readln(pers);
        until valide(pers);
        if (chercher(Pers, P, C) = false) then
        begin
            C:= C + 1;
            P[C]:= Pers;
        end;
    if(C = 20) then writeln('vous averz ganger')
    else writeln('vous avez perdu');}

    C:= 2;
    i:= 2;
    repeat
        repeat
            writeln('donner le nom du personnage trouver dans le paquet n', i, ' : ');
            readln(pers);
        until valide(pers);
         if (chercher(Pers, P, C) = false) then
        begin
            C:= C + 1;
            i:= i + 1;
            P[C]:= Pers;
            T[i]:= Pers;
        end;



    until (C = 20) or (i = 50);
    if(c = 20) then writeln('vous avez ganger')
    else 
    begin
        for j:= i downto C do
        begin
            if(chercher(T[i], P, C) = false) then writeln('il vous manque ', T[i]);

        end;

    end;


end.
