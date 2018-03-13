generated
message: anOSIdentifier
	self message notNil
		ifTrue: [ self message parent: nil ].
	message := anOSIdentifier.
	self message notNil
		ifTrue: [ self message parent: self ]