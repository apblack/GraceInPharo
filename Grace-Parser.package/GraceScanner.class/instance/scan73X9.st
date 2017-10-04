generated
scan73X9
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan73X9X1 ].
	^ self scan73X9X3