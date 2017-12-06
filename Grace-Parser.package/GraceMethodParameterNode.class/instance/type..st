generated
type: aGraceTypeExpressionNode
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aGraceTypeExpressionNode.
	self type notNil
		ifTrue: [ self type parent: self ]