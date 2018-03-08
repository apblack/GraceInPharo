generated
request: aGraceRequestPartNoArgumentsNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestPartNoArgumentsNode.
	self request notNil
		ifTrue: [ self request parent: self ]