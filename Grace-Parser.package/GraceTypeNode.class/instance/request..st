generated
request: aGraceRequestWithoutArgumentsNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestWithoutArgumentsNode.
	self request notNil
		ifTrue: [ self request parent: self ]