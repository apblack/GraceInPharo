scope creation
visitVarDeclaration: aVarDecl

	aVarDecl	id markAsDefinition.
	aVarDecl scope add: (GraceVar fromParseTreeNode: aVarDecl) withName: aVarDecl id name.
	self visitChildren: aVarDecl.
	^ aVarDecl