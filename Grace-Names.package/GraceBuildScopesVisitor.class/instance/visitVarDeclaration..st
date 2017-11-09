scope creation
visitVarDeclaration: aVarDecl

	aVarDecl scope add: (GraceVar fromDecl: aVarDecl) withName: aVarDecl id value.
	self visitChildren: aVarDecl.
	^ aVarDecl