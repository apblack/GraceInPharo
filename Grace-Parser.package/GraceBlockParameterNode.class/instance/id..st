generated
id: aGraceIdentifierNode
	self id notNil
		ifTrue: [ self id parent: nil ].
	id := aGraceIdentifierNode.
	self id notNil
		ifTrue: [ self id parent: self ]