generated
parameters: aGraceBlockParameterListNode
	self parameters notNil
		ifTrue: [ self parameters parent: nil ].
	parameters := aGraceBlockParameterListNode.
	self parameters notNil
		ifTrue: [ self parameters parent: self ]