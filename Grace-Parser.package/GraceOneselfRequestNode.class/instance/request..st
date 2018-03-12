generated
request: aGraceRequestPartNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestPartNode.
	self request notNil
		ifTrue: [ self request parent: self ]