generated
param: aGraceSingleMethodParameterNode
	self param notNil
		ifTrue: [ self param parent: nil ].
	param := aGraceSingleMethodParameterNode.
	self param notNil
		ifTrue: [ self param parent: self ]