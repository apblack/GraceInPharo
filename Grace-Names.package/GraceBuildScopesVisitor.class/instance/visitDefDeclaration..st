visit methods
visitDefDeclaration: aDefDecl

	aDefDecl	id markAsDefinition.
	aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl) withName: aDefDecl id name.
	^ super visitDefDeclaration: aDefDecl