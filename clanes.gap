HasNoDominatedVertex := function (g)
    return IsEmpty(DominatedVertices(g));
end;

IsNotCliqueHelly := function (g)
    return not(IsCliqueHelly(g));
end;

IsNotEventuallyHelly := function (g)
    local kcurrent, isit;
    kcurrent := g;
    isit := not(IsCliqueHelly(kcurrent));
    while isit do
        kcurrent := CliqueGraph(kcurrent,100);
        if kcurrent = fail then 
            return true;
        else
            kcurrent := CompletelyParedGraph(kcurrent);
            isit := not(IsCliqueHelly(kcurrent));
        fi;
    od;
    return isit;
end;

