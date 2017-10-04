generated
scan88X1X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan88X1X1X1 ].
	^ self scan88X1X1X3