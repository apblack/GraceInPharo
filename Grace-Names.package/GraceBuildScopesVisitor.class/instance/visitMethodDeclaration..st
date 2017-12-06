visit methods
visitMethodDeclaration: aMethodDec
	
	aMethodDec scope add: (GraceMethod fromParseTreeNode: aMethodDec) 
									withName: aMethodDec declaredName.
	self createScope: GraceMethodScope in: aMethodDec.
	^ super visitMethodDeclaration: aMethodDec