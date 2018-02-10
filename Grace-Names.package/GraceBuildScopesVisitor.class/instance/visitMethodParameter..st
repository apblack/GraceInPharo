visit methods
visitMethodParameter: aMethodParameter

	aMethodParameter id markAsDefinition.
	aMethodParameter id isAnonymous ifFalse: [
		self checkForShadowingDefinitionOf: aMethodParameter.
		aMethodParameter scope add: (GraceParameter fromParseTreeNode: aMethodParameter)
	].
	^ super visitMethodParameter: aMethodParameter