generated
scan43
	[ self recordMatch: #(43 55).
	self step.
	currentCharacter == $.
		ifTrue:
			[ ^ self scan43X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan43X2 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	^ self scan43X3