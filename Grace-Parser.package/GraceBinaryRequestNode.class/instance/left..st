generated
left: aGraceRootNode
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aGraceRootNode.
	self left notNil
		ifTrue: [ self left parent: self ]