generated
receiver: aGraceExpressionNode
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := aGraceExpressionNode.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]