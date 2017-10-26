generated
typeargs: aGraceTypeArgumentsNode
	self typeargs notNil
		ifTrue: [ self typeargs parent: nil ].
	typeargs := aGraceTypeArgumentsNode.
	self typeargs notNil
		ifTrue: [ self typeargs parent: self ]