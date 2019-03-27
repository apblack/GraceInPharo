generated
typeParameterList: aGraceTypeParameterListNode
	self typeParameterList notNil
		ifTrue: [ self typeParameterList parent: nil ].
	typeParameterList := aGraceTypeParameterListNode.
	self typeParameterList notNil
		ifTrue: [ self typeParameterList parent: self ]