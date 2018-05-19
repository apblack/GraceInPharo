generated
returns: aGraceTypeExpressionNode
	self returns notNil
		ifTrue: [ self returns parent: nil ].
	returns := aGraceTypeExpressionNode.
	self returns notNil
		ifTrue: [ self returns parent: self ]