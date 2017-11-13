scope creation
visitVarDeclaration: aVarDecl

	aVarDecl scope add: (GraceVar fromDecl: aVarDecl) withName: aVarDecl id name.
	self visitChildren: aVarDecl.
	^ aVarDecl