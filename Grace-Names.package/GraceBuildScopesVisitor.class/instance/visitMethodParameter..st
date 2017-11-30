visit methods
visitMethodParameter: aMethodParameter

	self checkForShadowingDefinitionOf: aMethodParameter.
	aMethodParameter id markAsDefinition.
	aMethodParameter scope add: (GraceParameter fromParseTreeNode: aMethodParameter) 
									withName: aMethodParameter declaredName.
	^ super visitMethodParameter: aMethodParameter