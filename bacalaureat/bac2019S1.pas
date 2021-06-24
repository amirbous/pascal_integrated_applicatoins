program bac2019S1;
Uses crt ;


type tab = array of string[10];

var
    N:integer;
    tableau, tp:tab;
function verif(ch:string):boolean;
var i:integer;
begin
    i := 0;
    repeat

    i:= i + 1;

    until not (ch[i] in ['A'..'Z']) or (i = length(ch));
    verif := i = length(ch);
end;
function traitement(ch:string):string;
var i, j: integer;
resultat: string;
begin
    i :=1 ;
    j := length(ch);
    resultat := '';
    repeat 
    resultat := resultat + ch[j] + ch[i];
    i := i+1;
    j := j -1 ;

    until i >= j;
    if(i = j) then
    begin
        resultat := resultat + ch[i];

    end;
    
    traitement := resultat;
end;
procedure affichage(tp:tab; N:integer);
var i:integer;
begin

    for i:= 1 to N do 
    begin
    write(tp[i], ' ');
    end;
end;
procedure SaisieN(var N:integer);
begin
    
    write('Donner le nombre de produit:');
    repeat   
    read(N);
    until N in [3..20];
    setLength(tableau, N)
end;

procedure spirale(nom:tab; N:integer);
var p, i:integer;
    ch:string;
begin
    
    ch := '';
    
    repeat
    write('donner p: ');
    readln(p);
    until p in [1..10];

    for i:= 1 to N do
    begin

    ch := ch +nom[i][p];

    end;
    
    tp[1] := ch;
    for i:= 2 to N do
    begin
        tp[i] := traitement(tp[i-1]);
        
    end;
    affichage(tp, N);
    
end;

procedure remplissage(var tableau:tab; N:integer);

var i:integer;
begin
    for i:= 1 to N do 
    begin 
            repeat
                write('enter nom du produit N', i, ' : ');
                readln(tableau[i]);
            until verif(tableau[i]);
    end;    
    
end;

begin
    
    SaisieN(N); 
    remplissage(tableau, N); 
    setLength(tp, N);
    spirale(tableau, N)


end.