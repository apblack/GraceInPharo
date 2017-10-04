generated
scan73X4
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan73X4X1 ].
	^ self scan73X4X3