generated
body: aGraceBlockBodyNode
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aGraceBlockBodyNode.
	self body notNil
		ifTrue: [ self body parent: self ]