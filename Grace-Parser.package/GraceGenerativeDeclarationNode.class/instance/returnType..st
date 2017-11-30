generated
returnType: aGraceRootNode
	self returnType notNil
		ifTrue: [ self returnType parent: nil ].
	returnType := aGraceRootNode.
	self returnType notNil
		ifTrue: [ self returnType parent: self ]