generated
typeArgs: aGraceTypeArgumentsNode
	self typeArgs notNil
		ifTrue: [ self typeArgs parent: nil ].
	typeArgs := aGraceTypeArgumentsNode.
	self typeArgs notNil
		ifTrue: [ self typeArgs parent: self ]