generated
returnType: aGraceTypeNode
	self returnType notNil
		ifTrue: [ self returnType parent: nil ].
	returnType := aGraceTypeNode.
	self returnType notNil
		ifTrue: [ self returnType parent: self ]