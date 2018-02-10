generated
newMethod: aGraceMethodHeaderNode
	self newMethod notNil
		ifTrue: [ self newMethod parent: nil ].
	newMethod := aGraceMethodHeaderNode.
	self newMethod notNil
		ifTrue: [ self newMethod parent: self ]