visit methods
visitGenerativeDeclaration: aGenDeclaration
	
	aGenDeclaration scope add: (GraceMethod fromParseTreeNode: aGenDeclaration). 
	self createScope: aGenDeclaration scopeKind in: aGenDeclaration.
	^ super visitGenerativeDeclaration: aGenDeclaration