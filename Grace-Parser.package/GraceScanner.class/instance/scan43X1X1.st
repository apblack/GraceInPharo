generated
scan43X1X1
	[ self recordMatch: #(43 55).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	^ self scan43X1X1X1