generated
arg: aGraceRootNode
	self arg notNil
		ifTrue: [ self arg parent: nil ].
	arg := aGraceRootNode.
	self arg notNil
		ifTrue: [ self arg parent: self ]