generated
name: aGraceIdentifierNode
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aGraceIdentifierNode.
	self name notNil
		ifTrue: [ self name parent: self ]