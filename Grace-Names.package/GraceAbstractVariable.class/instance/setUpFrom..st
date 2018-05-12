instance initialization
setUpFrom: aDeclarationNode
	name := aDeclarationNode declaredName.
	definingParseNode := aDeclarationNode.
	isMarker := aDeclarationNode isMarkerDeclaration.
	aDeclarationNode variable: self