visit methods
visitModule: aModule
	| newScope |
	newScope := GraceModuleScope new.
	newScope outerScope: aModule parent scope.
	aModule scope: newScope.
	self visitChildren: aModule.
	^ aModule