generated
stringLiteral: aGraceStringLiteralNode
	self stringLiteral notNil
		ifTrue: [ self stringLiteral parent: nil ].
	stringLiteral := aGraceStringLiteralNode.
	self stringLiteral notNil
		ifTrue: [ self stringLiteral parent: self ]