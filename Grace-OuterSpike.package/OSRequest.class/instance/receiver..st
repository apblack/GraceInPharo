generated
receiver: anOSIdentifier
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := anOSIdentifier.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]