generated
pattern: aGraceExpressionNode
	self pattern notNil
		ifTrue: [ self pattern parent: nil ].
	pattern := aGraceExpressionNode.
	self pattern notNil
		ifTrue: [ self pattern parent: self ]