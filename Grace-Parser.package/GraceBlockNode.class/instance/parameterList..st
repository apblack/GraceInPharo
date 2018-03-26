generated
parameterList: aGraceBlockParameterListNode
	self parameterList notNil
		ifTrue: [ self parameterList parent: nil ].
	parameterList := aGraceBlockParameterListNode.
	self parameterList notNil
		ifTrue: [ self parameterList parent: self ]