generated
target: aGraceRootNode
	self target notNil
		ifTrue: [ self target parent: nil ].
	target := aGraceRootNode.
	self target notNil
		ifTrue: [ self target parent: self ]