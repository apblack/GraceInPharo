generated
item: aGraceRootNode
	self item notNil
		ifTrue: [ self item parent: nil ].
	item := aGraceRootNode.
	self item notNil
		ifTrue: [ self item parent: self ]