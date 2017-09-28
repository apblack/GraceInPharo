generated
request: aGraceRootNode
	self request notNil
		ifTrue: [ self request parent: nil ].
	request := aGraceRootNode.
	self request notNil
		ifTrue: [ self request parent: self ]