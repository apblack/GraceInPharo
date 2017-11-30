generated
element: aGraceRootNode
	self element notNil
		ifTrue: [ self element parent: nil ].
	element := aGraceRootNode.
	self element notNil
		ifTrue: [ self element parent: self ]