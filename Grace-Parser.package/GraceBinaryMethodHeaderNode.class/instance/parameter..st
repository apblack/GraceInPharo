generated
parameter: aGraceParameterNode
	self parameter notNil
		ifTrue: [ self parameter parent: nil ].
	parameter := aGraceParameterNode.
	self parameter notNil
		ifTrue: [ self parameter parent: self ]