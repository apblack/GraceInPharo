visit methods
visitVarDeclaration: aVarDecl

	aVarDecl	id markAsDefinition.
	aVarDecl scope add: (GraceVar fromParseTreeNode: aVarDecl) withName: aVarDecl id name.
	^ super visitVarDeclaration: aVarDecl