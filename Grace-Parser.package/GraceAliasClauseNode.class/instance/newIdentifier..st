generated
newIdentifier: aGraceMethodHeaderNode
	self newIdentifier notNil
		ifTrue: [ self newIdentifier parent: nil ].
	newIdentifier := aGraceMethodHeaderNode.
	self newIdentifier notNil
		ifTrue: [ self newIdentifier parent: self ]