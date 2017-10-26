generated
scan97
	[ self recordMatch: #(43 54).
	self step.
	currentCharacter == $.
		ifTrue:
			[ ^ self scan97X3 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan97X1 ].
	currentCharacter isDecimalDigit ] whileTrue.
	^ self scan97X5