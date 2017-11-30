generated
initializer: aGraceRootNode
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aGraceRootNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]