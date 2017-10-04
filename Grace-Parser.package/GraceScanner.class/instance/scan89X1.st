generated
scan89X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan89X1X1 ].
	^ self scan89X1X3