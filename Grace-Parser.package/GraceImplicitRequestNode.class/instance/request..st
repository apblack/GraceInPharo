generated
request: aGraceRequestPartsWithArgumentsNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestPartsWithArgumentsNode.
	self request notNil
		ifTrue: [ self request parent: self ]