generated
typeParameter: aGraceTypeParameterNode
	self typeParameter notNil
		ifTrue: [ self typeParameter parent: nil ].
	typeParameter := aGraceTypeParameterNode.
	self typeParameter notNil
		ifTrue: [ self typeParameter parent: self ]