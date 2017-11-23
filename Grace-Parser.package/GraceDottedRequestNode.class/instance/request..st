generated
request: aGraceExpressionNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceExpressionNode.
	self request notNil
		ifTrue: [ self request parent: self ]