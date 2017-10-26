generated
value: aGraceRootNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aGraceRootNode.
	self value notNil
		ifTrue: [ self value parent: self ]