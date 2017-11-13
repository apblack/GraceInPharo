generated
body: aGraceObjectBodyNode
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aGraceObjectBodyNode.
	self body notNil
		ifTrue: [ self body parent: self ]