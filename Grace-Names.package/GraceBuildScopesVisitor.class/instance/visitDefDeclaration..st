scope creation
visitDefDeclaration: aDefDecl

	aDefDecl	id markAsDefinition.
	aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl) withName: aDefDecl id name.
	self visitChildren: aDefDecl.
	^ aDefDecl