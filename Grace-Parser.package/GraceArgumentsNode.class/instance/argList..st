generated
argList: aGraceArgumentListNode
	self argList notNil
		ifTrue: [ self argList parent: nil ].
	argList := aGraceArgumentListNode.
	self argList notNil
		ifTrue: [ self argList parent: self ]