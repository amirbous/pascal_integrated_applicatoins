program bac_2012;
uses crt;
var 
    entree, resultat, lettre_traitee: string;
    i, j, k, frequence: integer;
    verfiee:  boolean;
    lettre_swap: char;
    


begin
    k:= 0;
    frequence:= 0;
    resultat:= '';
    lettre_traitee:= '';

    {verification entree}
    repeat
        verfiee:= true;
        write('entree le mot a crypter: ');
        readln(entree);
        for i:= 1 to length(entree) do 
        begin
            if not (entree[i] in ['A'..'Z']) then
            begin
                verfiee:= false;
                break;

            end;
            
        end;
    until verfiee;
    {//}
    
    for i:= 1 to 24 do lettre_traitee[i]:= '_';
    for i:= 1 to length(entree) do resultat:= concat(resultat, '_');
    
    {traitement}
    for i:= 1 to length(entree) do
    begin
    if pos(entree[i], lettre_traitee) = 0 then
    begin
        lettre_traitee:= concat(lettre_traitee, entree[i]);
        frequence:= 0;
        k:= 0;
        for j:= 1 to length(entree) do if(entree[j] = entree[i]) then frequence := frequence + 1;
        if frequence mod 2 = 1 then k:= frequence * 2
        else if frequence mod 2 = 0 then k:= frequence div 2;
        
        if 65 + ord(entree[i]) + k = 26 then lettre_swap:= 'Z'
        else 
        lettre_swap:= chr(65 + ((ord(entree[i]) - 65 + k) mod 26));
        
        for j:= 1 to length(entree) do if(entree[j] = entree[i]) then resultat[j]:= lettre_swap;
    end;
    end;
    writeln(resultat);
end.