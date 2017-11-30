visit methods
visitObjectConstructor: anObjCons
	| newScope |
	anObjCons scope ifNil: [
			"if the scope is not nil, it's already been set, e.g, by the visit method for Modules"	 
			newScope := GraceObjectScope new.
			self assert: anObjCons parent = ancestors first.
			newScope outerScope: anObjCons parent scope.
			anObjCons scope: newScope ].
	^ super visitObjectConstructor: anObjCons