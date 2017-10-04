generated
scan1
	self step.
	currentCharacter == Character lf
		ifTrue:
			[ ^ self scan1X19 ].
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X15 ].
	currentCharacter == Character space
		ifTrue:
			[ ^ self scan1X21 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	^ self scan1X29