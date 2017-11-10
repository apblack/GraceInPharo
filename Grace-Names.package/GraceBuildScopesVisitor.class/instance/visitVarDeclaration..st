scope creation
visitVarDeclaration: aVarDecl

	aVarDecl scope add: (GraceVar fromDecl: aVarDecl) withName: aVarDecl id stringName.
	self visitChildren: aVarDecl.
	^ aVarDecl