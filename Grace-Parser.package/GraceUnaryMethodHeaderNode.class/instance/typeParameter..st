generated
typeParameter: aGraceTypeParameterListNode
	self typeParameter notNil
		ifTrue: [ self typeParameter parent: nil ].
	typeParameter := aGraceTypeParameterListNode.
	self typeParameter notNil
		ifTrue: [ self typeParameter parent: self ]