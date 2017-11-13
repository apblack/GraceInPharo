generated
parameter: aGraceMethodParameterNode
	self parameter notNil
		ifTrue: [ self parameter parent: nil ].
	parameter := aGraceMethodParameterNode.
	self parameter notNil
		ifTrue: [ self parameter parent: self ]