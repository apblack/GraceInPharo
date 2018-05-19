generated
superExpr: aGraceExpressionNode
	self superExpr notNil
		ifTrue: [ self superExpr parent: nil ].
	superExpr := aGraceExpressionNode.
	self superExpr notNil
		ifTrue: [ self superExpr parent: self ]