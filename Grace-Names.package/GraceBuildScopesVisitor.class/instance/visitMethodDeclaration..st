visit methods
visitMethodDeclaration: aMethodDec
	
	aMethodDec scope add: (GraceMethod fromParseTreeNode: aMethodDec). 
	self createScope: GraceMethodScope in: aMethodDec.
	^ super visitMethodDeclaration: aMethodDec