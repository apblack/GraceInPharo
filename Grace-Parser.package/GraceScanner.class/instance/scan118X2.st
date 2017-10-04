generated
scan118X2
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan118X1 ].
	^ self scan118X2X2