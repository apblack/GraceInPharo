generated
method: aGraceMethodHeaderNode
	self method notNil
		ifTrue: [ self method parent: nil ].
	method := aGraceMethodHeaderNode.
	self method notNil
		ifTrue: [ self method parent: self ]