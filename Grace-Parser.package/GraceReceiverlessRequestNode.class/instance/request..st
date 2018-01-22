generated
request: aGraceRequestWithArgumentsNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestWithArgumentsNode.
	self request notNil
		ifTrue: [ self request parent: self ]