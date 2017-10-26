generated
scan36X1X1
	[ self recordMatch: #(42 54).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter isDecimalDigit ] whileTrue.
	^ self scan36X1X1X1