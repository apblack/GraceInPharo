generated
pattern: aGraceRootNode
	self pattern notNil
		ifTrue: [ self pattern parent: nil ].
	pattern := aGraceRootNode.
	self pattern notNil
		ifTrue: [ self pattern parent: self ]