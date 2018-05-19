generated
initializer: aGraceExpressionNode
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aGraceExpressionNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]