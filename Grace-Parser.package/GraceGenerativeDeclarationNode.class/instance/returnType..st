generated
returnType: aGraceTypeExpressionNode
	self returnType notNil
		ifTrue: [ self returnType parent: nil ].
	returnType := aGraceTypeExpressionNode.
	self returnType notNil
		ifTrue: [ self returnType parent: self ]