visit methods
visitMethodParameter: aMethodParameter

	self checkForShadowingDefinitionOf: aMethodParameter.
	aMethodParameter id markAsDefinition.
	aMethodParameter scope add: (GraceParameter fromParseTreeNode: aMethodParameter).
	^ super visitMethodParameter: aMethodParameter