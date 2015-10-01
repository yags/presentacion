CondicionLeo := function (g)
    return CliqueNumber(g)<=3 and 
           CliqueNumber(ComplementGraph(g))<=2;
end;
