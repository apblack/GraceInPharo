generated
stringLiteral: aGraceRootNode
	self stringLiteral notNil
		ifTrue: [ self stringLiteral parent: nil ].
	stringLiteral := aGraceRootNode.
	self stringLiteral notNil
		ifTrue: [ self stringLiteral parent: self ]