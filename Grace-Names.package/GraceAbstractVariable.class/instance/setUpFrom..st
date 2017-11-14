instance initialization
setUpFrom: aDeclarationNode
	name := aDeclarationNode declaredName.
	self assert: (name isKindOf: String).
	startPosition := aDeclarationNode startPosition.
	stopPosition := aDeclarationNode stopPosition.
	scanner := aDeclarationNode scanner