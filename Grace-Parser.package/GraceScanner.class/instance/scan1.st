generated
scan1
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X2 ].
	^ self scan1X24