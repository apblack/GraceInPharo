generated
method: aGraceRootNode
	self method notNil
		ifTrue: [ self method parent: nil ].
	method := aGraceRootNode.
	self method notNil
		ifTrue: [ self method parent: self ]