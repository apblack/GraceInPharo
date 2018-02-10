instance initialization
setUpFrom: aDeclarationNode
	name := aDeclarationNode declaredName.
	self assert: (name isKindOf: String).
	definingNode := aDeclarationNode