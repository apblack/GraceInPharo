*Grace-Names
objectScopeFor: aNode
	^ (aNode scope lookupLexically: self requestedName ifAbsent: [ 
		^ GraceNamingError unboundName: self requestedName inNode: aNode ])
		attributeScope