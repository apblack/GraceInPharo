generated
term: aGraceRootNode
	self term notNil
		ifTrue: [ self term parent: nil ].
	term := aGraceRootNode.
	self term notNil
		ifTrue: [ self term parent: self ]