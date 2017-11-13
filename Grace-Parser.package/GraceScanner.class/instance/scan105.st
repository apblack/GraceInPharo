generated
scan105
	[ self recordMatch: #(44 55).
	self step.
	currentCharacter == $.
		ifTrue:
			[ ^ self scan105X3 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan105X1 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	^ self scan105X5