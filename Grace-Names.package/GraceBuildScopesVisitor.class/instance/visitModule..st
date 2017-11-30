visit methods
visitModule: aModule
	| newScope |
	newScope := GraceModuleScope new.
	self assert: aModule parent = ancestors first.
	newScope outerScope: aModule parent scope.
	aModule scope: newScope.
	^ super visitModule: aModule