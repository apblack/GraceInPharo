generated
typeParameters: aGraceTypeParameterListNode
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: nil ].
	typeParameters := aGraceTypeParameterListNode.
	self typeParameters notNil
		ifTrue: [ self typeParameters parent: self ]