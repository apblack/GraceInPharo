visit methods
visitVarDeclaration: aVarDecl

	| theScope |
	theScope := aVarDecl scope.
	aVarDecl	id markAsDefinition.
	aVarDecl id isAnonymous ifFalse: [ 
		theScope add: (GraceVar fromParseTreeNode: aVarDecl).
		theScope 
			"we do this for all scopes, not just object scopes, so that lookup is uniform"
			add: (GraceImplicitMethod fromParseTreeNode: aVarDecl) 
			withName: aVarDecl declaredName , ':=(_)' ].
	^ super visitVarDeclaration: aVarDecl