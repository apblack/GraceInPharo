generated
type: aGraceRootNode
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aGraceRootNode.
	self type notNil
		ifTrue: [ self type parent: self ]