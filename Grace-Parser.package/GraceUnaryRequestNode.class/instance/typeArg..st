generated
typeArg: aGraceTypeArgumentsNode
	self typeArg notNil
		ifTrue: [ self typeArg parent: nil ].
	typeArg := aGraceTypeArgumentsNode.
	self typeArg notNil
		ifTrue: [ self typeArg parent: self ]