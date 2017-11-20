visit methods
visitMethodDeclaration: aMethodDec
	| newScope |
	
	aMethodDec scope add: (GraceMethod fromParseTreeNode: aMethodDec) 
									withName: aMethodDec declaredName.
	newScope := GraceMethodScope new.
	newScope outerScope: aMethodDec parent scope.
	aMethodDec scope: newScope.
	self visitChildren: aMethodDec.
	^ aMethodDec