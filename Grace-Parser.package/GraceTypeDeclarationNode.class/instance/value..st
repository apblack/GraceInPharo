generated
value: aGraceTypeNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aGraceTypeNode.
	self value notNil
		ifTrue: [ self value parent: self ]