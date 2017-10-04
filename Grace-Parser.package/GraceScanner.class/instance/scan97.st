generated
scan97
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan97X1 ].
	^ self scan97X3