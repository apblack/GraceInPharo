visit methods
visitMethodDeclaration: aMethodDec
	| newScope |
	
	aMethodDec scope add: (GraceMethod fromParseTreeNode: aMethodDec) 
									withName: aMethodDec declaredName.
	newScope := GraceMethodScope new.
	self assert: aMethodDec parent = ancestors first.
	newScope outerScope: aMethodDec parent scope.
	aMethodDec scope: newScope.
	^ super visitMethodDeclaration: aMethodDec