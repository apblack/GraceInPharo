visit methods
visitBlock: aBlock
	| newScope |
	newScope := GraceBlockScope new.
	self assert: aBlock parent = ancestors first.
	newScope outerScope: aBlock parent scope.
	aBlock scope: newScope.
	^ super visitBlock: aBlock