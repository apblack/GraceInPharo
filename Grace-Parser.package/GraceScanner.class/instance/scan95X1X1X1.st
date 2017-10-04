generated
scan95X1X1X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan95X1X1X1X1 ].
	^ self scan95X1X1X1X3