generated
typeArgList: aGraceTypeArgumentsNode
	self typeArgList notNil
		ifTrue: [ self typeArgList parent: nil ].
	typeArgList := aGraceTypeArgumentsNode.
	self typeArgList notNil
		ifTrue: [ self typeArgList parent: self ]