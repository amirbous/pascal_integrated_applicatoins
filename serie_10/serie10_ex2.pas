program serie10_ex2;
uses crt;
var
    i, V0, j, n: integer;
    V1, inter: longint;
    M, verif, resultat, resultat_instantanne: string;
    ok: boolean;

begin
    repeat
        verif := '';
        ok:= true;
        writeln('entrer un mot a crypter');
        readln(M);
        for i:= 1 to length(M) do
        begin
            

            if (not (M[i] in ['A'..'Z'])) or ((pos(M[i], verif) <> 0)) then 
            begin
            
                ok:= false;
            end
            else verif := verif + M[i];
        end;
    until ok;
    resultat := '';
    for i:= 1 to length(M) do
    begin
        V0 := 2;
        v1 := 3;
        inter := 0;
        n := ord(M[i]) mod 64;
        for j:= 1 to n - 1 do
        begin
            inter := v1;
            V1 := V1 + 2 * V0;
            V0 := inter;

        end;

        str(V1, resultat_instantanne);
        if i < length(M) then resultat := resultat + resultat_instantanne + '-'
        else resultat := resultat + resultat_instantanne;

    end;
    writeln(resultat);
end.