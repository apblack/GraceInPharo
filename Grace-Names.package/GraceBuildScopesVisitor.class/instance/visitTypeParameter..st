visit methods
visitTypeParameter: typeParam

	typeParam id markAsDefinition.
	typeParam id isAnonymous ifFalse: [ 
		self checkForShadowingDefinitionOf: typeParam.
		typeParam scope add: (GraceTypeParameter fromParseTreeNode: typeParam)
	].
	^ super visitTypeParameter: typeParam