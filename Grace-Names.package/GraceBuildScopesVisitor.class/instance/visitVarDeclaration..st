visit methods
visitVarDeclaration: aVarDecl

	| theScope |
	theScope := aVarDecl scope.
	aVarDecl	id markAsDefinition.
	theScope add: (GraceVar fromParseTreeNode: aVarDecl).
	theScope
			add: (GraceMethod fromParseTreeNode: aVarDecl) 
			withName: aVarDecl declaredName , ':=(_)'.
	^ super visitVarDeclaration: aVarDecl