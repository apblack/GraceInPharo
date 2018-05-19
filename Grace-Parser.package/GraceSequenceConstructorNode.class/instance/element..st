generated
element: aGraceExpressionNode
	self element notNil
		ifTrue: [ self element parent: nil ].
	element := aGraceExpressionNode.
	self element notNil
		ifTrue: [ self element parent: self ]