visit methods
visitMethodParameter: aMethodParameter

	aMethodParameter id markAsDefinition.
	aMethodParameter id isAnonymous ifFalse: [
		aMethodParameter scope add: (GraceParameter fromParseTreeNode: aMethodParameter)
	].
	^ super visitMethodParameter: aMethodParameter