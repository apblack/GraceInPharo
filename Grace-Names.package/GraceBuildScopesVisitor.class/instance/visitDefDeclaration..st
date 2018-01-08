visit methods
visitDefDeclaration: aDefDecl

	aDefDecl	id markAsDefinition.
	aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl).
	^ super visitDefDeclaration: aDefDecl