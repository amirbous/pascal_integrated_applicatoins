program bac2013;
var
    
    T, T_resultant : array of integer;
    L,  e: integer;
    U_input_L: string;
procedure lecture(L: integer);
var i, error, N: integer;
    U_input: string;
begin

    for i:= 0 to L - 1 do
    begin
        
        repeat 
        write('enter un entier ', i + 1, ': ');
        readln(U_input);
        val(U_input, N, error);
        
        until error = 0;
        T[i] := N;
    end; 
end;
procedure segmenter(T, T_resultant: array of integer);
var n_inf, n_sup, i, h: integer;
begin
    i := 0;
    
    for n_inf:= 1 to L - 1 do
    begin
        if(T[n_inf] <= T[0]) then 
        begin
            T_resultant[i] := T[n_inf];
            i := i + 1;
            
            
        end;
        {else if (T[n] > T[1]) then
        begin
            T_resultant[j] := T[n];
            j := j - 1;
            
        end;}
        
    end;
    T_resultant[i] := T[0];
    i := i + 1;
    for n_sup:= 1 to L -1  do
    begin
        
        if T[n_sup] > T[0] then
        begin
            T_resultant[i] := T[n_sup];
            i := i + 1;
        end;


    end;
    writeln();
    for h:= 0 to L - 1   do write(T_resultant[h], ' | ');
end;

begin
    repeat
        write('entrer L: ');
        readln(U_input_L); 
        val(U_input_L, L, e);
    until (e = 0) and (L in [5..20]);

    
    setLength(T, L);
    
    lecture(L);
    setLength(T_resultant, L);
    segmenter(T, T_resultant);
    
    
end.