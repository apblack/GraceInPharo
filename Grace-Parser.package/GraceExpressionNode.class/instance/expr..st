generated
expr: aGraceRootNode
	self expr notNil
		ifTrue: [ self expr parent: nil ].
	expr := aGraceRootNode.
	self expr notNil
		ifTrue: [ self expr parent: self ]