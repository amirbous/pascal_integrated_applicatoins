program serie10_ex3;
uses crt;
var
  T: array [1..20] of Qword;
  M: string;
  ok: boolean;
  i,j, inter : integer;
const
    e = 5;
    p = 17;
    q = 19;
begin
    repeat
        ok:= true;
        writeln('entrer un mot a crypter');
        readln(M);
        for i:= 1 to length(M)do
        begin
            if (not(upcase(M[i]) in ['A'..'Z'])) then ok:= false;
        end;
    until (m <> '') and ok;
    
    for i := 1 to length(M) do
    begin
        T[i]:= ord(upcase(M[i])) mod 64;
    end;

    for i:= 1 to length(M) do
    begin
        inter:= T[i];
        for j:= 1 to e - 1 do T[i]:= inter * T[i];
        
        
        T[i] := T[i] mod (p * q);


    end;
    for i:=1 to length(M) do write(T[i], '|');
end.
