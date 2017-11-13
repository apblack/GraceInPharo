generated
newIdentifier: aGraceRootNode
	self newIdentifier notNil
		ifTrue: [ self newIdentifier parent: nil ].
	newIdentifier := aGraceRootNode.
	self newIdentifier notNil
		ifTrue: [ self newIdentifier parent: self ]