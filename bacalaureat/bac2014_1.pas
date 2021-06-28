program bac2014_1;
uses crt;
var
n_string: string;
e, n, m, i, j, s, h: integer;
ok: boolean;


begin
    repeat
        n:=0;
        m:=0;
        ok:= true;
        writeln('enter n');
        readln(n_string);
        val(n_string, n, e);
        if e <> 0 then ok:= false;
        writeln('entrer m');
        readln(n_string);
        val(n_string, M, e);
        if e<>0 then ok:= false;
    until (ok) and (n < m) and (n >=100);
    
    for i:= n to m do
    begin
        ok:= true;
        for j:=2 to n div 2 do
        begin
            if (i-1) mod j = 0 then ok:= false;
        end;
        if (not(ok)) then
        begin
            s:=0;
            h:= i;
            repeat
                s := s + (h mod 10);
                h:= h div 10;
            until h = 0;
            if i mod s <> 0 then ok:= false; 
        end;
        if ok then writeln(i);

    end;


end.