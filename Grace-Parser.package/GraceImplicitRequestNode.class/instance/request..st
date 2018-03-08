generated
request: aGraceRequestPartWithArgumentsNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestPartWithArgumentsNode.
	self request notNil
		ifTrue: [ self request parent: self ]