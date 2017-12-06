generated
oldIdentifier: aGraceMethodHeaderNode
	self oldIdentifier notNil
		ifTrue: [ self oldIdentifier parent: nil ].
	oldIdentifier := aGraceMethodHeaderNode.
	self oldIdentifier notNil
		ifTrue: [ self oldIdentifier parent: self ]