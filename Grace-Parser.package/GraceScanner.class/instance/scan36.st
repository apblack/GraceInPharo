generated
scan36
	[ self recordMatch: #(39 51).
	self step.
	currentCharacter == $.
		ifTrue:
			[ ^ self scan36X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan36X2