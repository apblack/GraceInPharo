generated
superExpr: aGraceRootNode
	self superExpr notNil
		ifTrue: [ self superExpr parent: nil ].
	superExpr := aGraceRootNode.
	self superExpr notNil
		ifTrue: [ self superExpr parent: self ]