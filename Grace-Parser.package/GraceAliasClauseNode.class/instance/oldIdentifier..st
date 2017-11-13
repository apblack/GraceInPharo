generated
oldIdentifier: aGraceRootNode
	self oldIdentifier notNil
		ifTrue: [ self oldIdentifier parent: nil ].
	oldIdentifier := aGraceRootNode.
	self oldIdentifier notNil
		ifTrue: [ self oldIdentifier parent: self ]