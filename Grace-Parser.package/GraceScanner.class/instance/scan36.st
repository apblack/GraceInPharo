generated
scan36
	[ self recordMatch: #(42 54).
	self step.
	currentCharacter == $.
		ifTrue:
			[ ^ self scan36X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan36X2 ].
	currentCharacter isDecimalDigit ] whileTrue.
	^ self scan36X3