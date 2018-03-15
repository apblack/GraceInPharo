instance initialization
setUpFrom: aDeclarationNode
	name := aDeclarationNode declaredName.
	definingNode := aDeclarationNode.
	isMarker := aDeclarationNode isMarkerDeclaration.
	aDeclarationNode variable: self