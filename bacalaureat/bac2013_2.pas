program bac2013_2;
uses crt;
var
    T: array of integer;
    L, e, h: integer;
    L_str :string;

procedure remplissage( L: integer);
var i, N, error: integer;
T_i_Str: string;
begin
    for i := 0 to L - 1 do
    begin
        error := 0;
        repeat
            writeln('enter l''element nmr ', i + 1,' : ');
            readln(T_i_Str);
            val(T_i_Str, N, error);
        until (error = 0);
        T[i] := N;

    end;
end;
procedure traitement(L:integer);
var j, H, gauche ,inter, pos_inter, droite, k: integer;
begin
    gauche := 0;
    droite := L - 1;
    while (gauche < droite) do 
    begin
        pos_inter := gauche;
        for j := gauche to droite do if T[j] > T[pos_inter] then pos_inter := j;
        if pos_inter < droite then
        begin
            inter := T[pos_inter];
            for k := pos_inter to droite - 1 do 
            begin                
                T[k] := T[k + 1];
            end;
            T[droite] := inter;
        end;
        droite := droite - 1;
        for H := 0 to L - 1 do write(T[H], ' ~ ');
        writeln;
        pos_inter := droite;
        for k := droite downto gauche do    if T[k] < T[pos_inter] then pos_inter := k;
        if pos_inter > gauche then
        begin
            inter := T[pos_inter];
            for j := pos_inter downto gauche + 1 do 
            begin                
                T[j] := T[j - 1];
            end;
            T[gauche] := inter;

        end;
        gauche := gauche + 1;

        for H := 0 to L - 1 do write(T[H], ' ~ ');
        writeln;
    end;
    
end;

begin
    {definition longuer tableau}
    repeat
        write('inter L: ');
        readln(L_str);
        val(L_str, L, e);    
    until (e = 0) and (L <> 0);
    setLength(T, L);
    {remplissage tableau}
    remplissage(L);
    
    {traitement}
    traitement(L);
    for h := 0 to L - 1 do write(T[h], ' | ');
end.