visit methods
visitBlockParameter: blockParam

	blockParam id ifNotNil: [ :id | 
		id markAsDefinition.
		id isAnonymous ifFalse: [
			blockParam scope add: (GraceParameter fromParseTreeNode: blockParam)
		]
	].
	^ super visitBlockParameter: blockParam