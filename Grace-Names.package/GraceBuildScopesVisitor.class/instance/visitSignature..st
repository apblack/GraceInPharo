visit methods
visitSignature: aSignature
	
	aSignature scope add: (GraceMethod fromParseTreeNode: aSignature). 
	self createScope: aSignature scopeKind in: aSignature.
	^ super visitSignature: aSignature