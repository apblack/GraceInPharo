scope creation
visitMethodDeclaration: aMethodDec
	| newScope |
	newScope := GraceMethodScope new.
	newScope outerScope: aMethodDec parent scope.
	aMethodDec scope: newScope.
	self visitChildren: aMethodDec.
	^ aMethodDec