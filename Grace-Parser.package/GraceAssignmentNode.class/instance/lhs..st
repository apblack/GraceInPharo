generated
lhs: aGraceIdentifierNode
	self lhs notNil
		ifTrue: [ self lhs parent: nil ].
	lhs := aGraceIdentifierNode.
	self lhs notNil
		ifTrue: [ self lhs parent: self ]