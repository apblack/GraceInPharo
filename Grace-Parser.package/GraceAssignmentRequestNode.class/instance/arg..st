generated
arg: aGraceExpressionNode
	self arg notNil
		ifTrue: [ self arg parent: nil ].
	arg := aGraceExpressionNode.
	self arg notNil
		ifTrue: [ self arg parent: self ]