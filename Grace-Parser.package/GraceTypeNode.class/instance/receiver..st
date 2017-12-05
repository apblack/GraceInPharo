generated
receiver: aGraceTypeNode
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := aGraceTypeNode.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]