visit methods
visitBlockParameter: blockParam

	blockParam id ifNotNil: [ :id | 
		id markAsDefinition.
		self checkForShadowingDefinitionOf: blockParam.
		blockParam scope add: (GraceParameter fromParseTreeNode: blockParam)
	].
	^ super visitBlockParameter: blockParam