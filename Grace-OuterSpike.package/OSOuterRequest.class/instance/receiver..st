generated
receiver: anOSOuter
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := anOSOuter.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]