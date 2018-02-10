visit methods
visitDefDeclaration: aDefDecl

	aDefDecl	id markAsDefinition.
	aDefDecl id isAnonymous ifFalse: [ 
		aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl) ].
	^ super visitDefDeclaration: aDefDecl