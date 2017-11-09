scope creation
visitBlock: aBlock
	| newScope |
	newScope := GraceBlockScope new.
	newScope outerScope: aBlock parent scope.
	aBlock scope: newScope.
	self visitChildren: aBlock.
	^ aBlock