generated
header: aGraceRootNode
	self header notNil
		ifTrue: [ self header parent: nil ].
	header := aGraceRootNode.
	self header notNil
		ifTrue: [ self header parent: self ]