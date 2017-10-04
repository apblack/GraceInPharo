generated
scan73
	self step.
	currentCharacter == Character lf
		ifTrue:
			[ ^ self scan73X11 ].
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan73X8 ].
	currentCharacter == Character space
		ifTrue:
			[ ^ self scan73X12 ].
	^ self scan73X28