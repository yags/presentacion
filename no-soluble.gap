# Encontrar el primer grupo sin propiedad P

NextIndex := function(u)
    local i,j;
    i := u[1];
    j := u[2];
    if j < NrSmallGroups(i) then
        return [i,j+1];
    else
        return [i+1,1];
    fi;
end;

FirstGroupWithout := function(P)
    local a,g;
    a := [1,0];
    repeat
        a := NextIndex(a);
        g := SmallGroup(a);
        Print("Checking SmallGroup(",a,")\n");
    until not(P(g));
    Print("First group without ",P," is SmallGroup(",a,")\n");
end;
