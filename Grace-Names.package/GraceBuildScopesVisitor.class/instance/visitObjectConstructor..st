visit methods
visitObjectConstructor: anObjCons
	| newScope |
	newScope := GraceObjectScope new.
	newScope outerScope: anObjCons parent scope.
	anObjCons scope: newScope.
	self visitChildren: anObjCons.
	^ anObjCons