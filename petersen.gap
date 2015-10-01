LoadPackage("grape");
P := Graph( SymmetricGroup(5), [[1,2]], OnSets,function(x,y) return Intersection(x,y)=[]; end );
