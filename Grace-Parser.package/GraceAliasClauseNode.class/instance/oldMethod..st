generated
oldMethod: aGraceMethodHeaderNode
	self oldMethod notNil
		ifTrue: [ self oldMethod parent: nil ].
	oldMethod := aGraceMethodHeaderNode.
	self oldMethod notNil
		ifTrue: [ self oldMethod parent: self ]