generated
value: aGraceExpressionNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aGraceExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]