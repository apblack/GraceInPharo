generated
TypeParameterList: aGraceTypeParameterNode
	self TypeParameterList notNil
		ifTrue: [ self TypeParameterList parent: nil ].
	TypeParameterList := aGraceTypeParameterNode.
	self TypeParameterList notNil
		ifTrue: [ self TypeParameterList parent: self ]