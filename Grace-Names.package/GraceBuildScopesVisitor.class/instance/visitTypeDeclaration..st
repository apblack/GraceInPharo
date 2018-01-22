visit methods
visitTypeDeclaration: aTypeDecl
	aTypeDecl id markAsDefinition.
	aTypeDecl scope add: (GraceType fromParseTreeNode: aTypeDecl).
	^ super visitTypeDeclaration: aTypeDecl