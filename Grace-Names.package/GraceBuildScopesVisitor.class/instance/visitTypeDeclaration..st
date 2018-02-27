visit methods
visitTypeDeclaration: aTypeDecl
	aTypeDecl id markAsDefinition.
	aTypeDecl scope add: (GraceType fromParseTreeNode: aTypeDecl).
	self createScope: GraceTypeScope in: aTypeDecl.
	^ super visitTypeDeclaration: aTypeDecl