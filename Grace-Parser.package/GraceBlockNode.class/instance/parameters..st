generated
parameters: aGraceParameterListNode
	self parameters notNil
		ifTrue: [ self parameters parent: nil ].
	parameters := aGraceParameterListNode.
	self parameters notNil
		ifTrue: [ self parameters parent: self ]