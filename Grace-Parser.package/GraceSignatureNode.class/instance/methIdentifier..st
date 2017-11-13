generated
methIdentifier: aGraceRootNode
	self methIdentifier notNil
		ifTrue: [ self methIdentifier parent: nil ].
	methIdentifier := aGraceRootNode.
	self methIdentifier notNil
		ifTrue: [ self methIdentifier parent: self ]