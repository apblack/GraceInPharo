scope creation
visitMethodParameter: aMethodParameter

	self checkForShadowingDefinitionOf: aMethodParameter.
	aMethodParameter id markAsDefinition.
	aMethodParameter scope add: (GraceParameter fromParseTreeNode: aMethodParameter) 
									withName: aMethodParameter declaredName.
	self visitChildren: aMethodParameter.
	^ aMethodParameter