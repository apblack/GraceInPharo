instance initialization
setUpFrom: aDeclarationNode
	name := aDeclarationNode id name.
	self assert: (name isKindOf: String).
	startPosition := aDeclarationNode startPosition.
	stopPosition := aDeclarationNode stopPosition.
	scanner := aDeclarationNode scanner