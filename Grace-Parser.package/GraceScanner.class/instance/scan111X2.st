generated
scan111X2
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan111X1 ].
	^ self scan111X2X2