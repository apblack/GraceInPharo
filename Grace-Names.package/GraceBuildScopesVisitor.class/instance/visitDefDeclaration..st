scope creation
visitDefDeclaration: aDefDecl

	aDefDecl scope add: (GraceDef fromDecl: aDefDecl) withName: aDefDecl id stringName.
	self visitChildren: aDefDecl.
	^ aDefDecl