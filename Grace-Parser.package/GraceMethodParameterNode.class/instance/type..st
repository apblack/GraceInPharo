generated
type: aGraceTypeNode
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aGraceTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]