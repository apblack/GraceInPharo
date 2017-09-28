generated
stringLiteral: aGraceUninterpretedStringNode
	self stringLiteral notNil
		ifTrue: [ self stringLiteral parent: nil ].
	stringLiteral := aGraceUninterpretedStringNode.
	self stringLiteral notNil
		ifTrue: [ self stringLiteral parent: self ]