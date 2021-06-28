program bac2014_2;
uses crt;
var
n_string: string;
n, e, i, j: integer;
ok: boolean;

begin

    repeat
        writeln('entrer un entier n pair >= 4: ');
        readln(n_string);
        val(n_string, n, e);
    until (e = 0) and (n >=4 ) and (n mod 2 = 0);
    for i:= 2 to n - 1 do
    begin
        ok:= true;
        for j:= 2 to i div 2 do
        begin
            if (i <> 2) and (j <> 2) and (i mod j = 0) and (j<>n div 2) and (i<> j) then ok:= false;
        end;
        if ok then
        begin
            for j:= 2 to n - i div 2 do
            begin
                if (j <> 2 ) and ((n-i) <> 2 ) and ((n-i) mod j = 0) and (j<>n div 2) and (i<> j) then ok:= false;
            end;
        end;
        if ok then writeln(i, ' ', n - i);
    end;


end.
