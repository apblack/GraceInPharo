generated
rhs: aGraceRootNode
	self rhs notNil
		ifTrue: [ self rhs parent: nil ].
	rhs := aGraceRootNode.
	self rhs notNil
		ifTrue: [ self rhs parent: self ]