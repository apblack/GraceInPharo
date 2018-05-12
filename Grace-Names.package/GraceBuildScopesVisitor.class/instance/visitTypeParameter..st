visit methods
visitTypeParameter: typeParam

	typeParam id markAsDefinition.
	typeParam id isAnonymous ifFalse: [
		typeParam scope add: (GraceTypeParameter fromParseTreeNode: typeParam)
	].
	^ super visitTypeParameter: typeParam