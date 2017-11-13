scope creation
visitDefDeclaration: aDefDecl

	aDefDecl scope add: (GraceDef fromDecl: aDefDecl) withName: aDefDecl id name.
	self visitChildren: aDefDecl.
	^ aDefDecl