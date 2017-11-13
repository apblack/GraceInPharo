scope creation
visitDefDeclaration: aDefDecl

	aDefDecl scope add: (GraceDef fromParseTreeNode: aDefDecl) withName: aDefDecl id name.
	self visitChildren: aDefDecl.
	^ aDefDecl