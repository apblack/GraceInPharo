generated
TypeParameterList: aGraceTypeParameterListNode
	self TypeParameterList notNil
		ifTrue: [ self TypeParameterList parent: nil ].
	TypeParameterList := aGraceTypeParameterListNode.
	self TypeParameterList notNil
		ifTrue: [ self TypeParameterList parent: self ]