solvable := true;
i := 0;

while solvable do
    i := i+1;
    j := 0;
    while solvable and j < NrSmallGroups(i) do
        j := j+1;
        g := SmallGroup(i,j);
        Print("Checking SmallGroup(",i,",",j,")\n");
        solvable := IsSolvable(g);
    od;
od;

Print("First non solvable group is SmallGroup(",i,",",j,")\n");


