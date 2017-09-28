generated
typeParamerters: aGraceTypeParametersNode
	self typeParamerters notNil
		ifTrue: [ self typeParamerters parent: nil ].
	typeParamerters := aGraceTypeParametersNode.
	self typeParamerters notNil
		ifTrue: [ self typeParamerters parent: self ]