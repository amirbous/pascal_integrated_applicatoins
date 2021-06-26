program serie10_ex1;
uses crt;
var
    noms: array [1..20] of string;
    max_cardinal, compteur,  e, n, i, j: integer;
    entree: string;
    verifiee: boolean;

begin

    repeat 
        verifiee:= true;
        writeln('insere le nombre des nom a remplir');
        readln(entree);
        val(entree, n, e);
        if (e <> 0) or (n < 5) or (n > 20)then verifiee:= false;
            

    until verifiee;
    for i:= 1 to n do
    begin
        repeat
            writeln('ecrirre le nom numero ', i, ' :');
            readln(noms[i]);

        until (length(noms[i]) < 20) and (noms[i] <> '');

    end;
    
    
    max_cardinal:= 0;
    for i:= 1 to length(noms[1]) do 
    begin
    if (upcase(noms[1][i]) = 'A') or (upcase(noms[1][i]) = 'E') or (upcase(noms[1][i]) = 'I') or (upcase(noms[1][i]) = 'O') or (upcase(noms[1][i]) = 'U') or (upcase(noms[1][i]) = 'Y') then max_cardinal:= max_cardinal + 1; 
    end;
    
    for i := 1 to n do
    begin
        compteur:= 0;
        for j:= 1 to length(noms[i]) do
        begin
            if (upcase(noms[i][j]) = 'A') or (upcase(noms[i][j]) = 'E') or (upcase(noms[i][j]) = 'I') or (upcase(noms[i][j]) = 'O') or (upcase(noms[i][j]) = 'U') or (upcase(noms[i][j]) = 'Y') then compteur := compteur + 1;     
        end;    
        if compteur > max_cardinal then
        begin
            max_cardinal:= compteur;
            
        end;

    end;
    for i := 1 to n do
    begin
        compteur:= 0;
        for j:= 1 to length(noms[i]) do
        begin
            if (upcase(noms[i][j]) = 'A') or (upcase(noms[i][j]) = 'E') or (upcase(noms[i][j]) = 'I') or (upcase(noms[i][j]) = 'O') or (upcase(noms[i][j]) = 'U') or (upcase(noms[i][j]) = 'Y') then compteur := compteur + 1; 
            

        end;    
        if compteur = max_cardinal then writeln(noms[i]);

    end;
    

end.