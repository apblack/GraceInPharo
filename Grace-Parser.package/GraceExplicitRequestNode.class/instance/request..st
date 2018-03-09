generated
request: aGraceRequestNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRequestNode.
	self request notNil
		ifTrue: [ self request parent: self ]