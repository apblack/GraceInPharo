generated
receiver: anOSExpression
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := anOSExpression.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]