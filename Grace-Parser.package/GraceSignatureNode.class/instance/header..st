generated
header: aGraceMethodHeaderNode
	self header notNil
		ifTrue: [ self header parent: nil ].
	header := aGraceMethodHeaderNode.
	self header notNil
		ifTrue: [ self header parent: self ]