generated
term: aGraceTypeNode
	self term notNil
		ifTrue: [ self term parent: nil ].
	term := aGraceTypeNode.
	self term notNil
		ifTrue: [ self term parent: self ]