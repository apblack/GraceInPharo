generated
parameters: aGraceBlockParametersNode
	self parameters notNil
		ifTrue: [ self parameters parent: nil ].
	parameters := aGraceBlockParametersNode.
	self parameters notNil
		ifTrue: [ self parameters parent: self ]