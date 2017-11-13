generated
scan1
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X14 ].
	^ self scan1X24