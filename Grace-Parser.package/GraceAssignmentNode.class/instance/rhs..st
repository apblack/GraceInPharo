generated
rhs: aGraceExpressionNode
	self rhs notNil
		ifTrue: [ self rhs parent: nil ].
	rhs := aGraceExpressionNode.
	self rhs notNil
		ifTrue: [ self rhs parent: self ]