generated
parameter: aGraceSingleMethodParameterNode
	self parameter notNil
		ifTrue: [ self parameter parent: nil ].
	parameter := aGraceSingleMethodParameterNode.
	self parameter notNil
		ifTrue: [ self parameter parent: self ]