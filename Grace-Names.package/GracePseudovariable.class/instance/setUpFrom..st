instance initialization
setUpFrom: aDeclarationNode
	super setUpFrom: aDeclarationNode.
	isModule := aDeclarationNode isModule.
	isDialect := aDeclarationNode isDialect