*grace-names
objectScopeInScope: aScope for: aNode
	^ (aScope lookup: self requestedName ifAbsent: [ 
		^ GraceNamingError unboundName: self requestedName inNode: aNode ]) 
		attributeScope