scope creation
visitDefDeclaration: aDefDecl

	aDefDecl scope add: (GraceDef fromDecl: aDefDecl) withName: aDefDecl id value.
	self visitChildren: aDefDecl.
	^ aDefDecl