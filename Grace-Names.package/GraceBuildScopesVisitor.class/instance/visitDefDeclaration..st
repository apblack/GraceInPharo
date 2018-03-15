visit methods
visitDefDeclaration: aDefDecl
	aDefDecl id markAsDefinition.
	self checkDefAnnotations: aDefDecl.
	aDefDecl id isAnonymous
		ifFalse: [ aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl) ].
	^ super visitDefDeclaration: aDefDecl