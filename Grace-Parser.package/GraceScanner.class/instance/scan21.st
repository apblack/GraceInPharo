generated
scan21
	[ self recordMatch: #(41 43).
	self step.
	currentCharacter == $.
		ifTrue:
			[ ^ self scan21X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan21X2