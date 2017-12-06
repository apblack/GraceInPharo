generated
methIdentifier: aGraceMethodHeaderNode
	self methIdentifier notNil
		ifTrue: [ self methIdentifier parent: nil ].
	methIdentifier := aGraceMethodHeaderNode.
	self methIdentifier notNil
		ifTrue: [ self methIdentifier parent: self ]