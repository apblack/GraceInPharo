instance initialization
setUpFrom: aDeclarationNode
	name := aDeclarationNode id stringName.
	self assert: (name isKindOf: String).
	startPosition := aDeclarationNode startPosition.
	stopPosition := aDeclarationNode stopPosition.