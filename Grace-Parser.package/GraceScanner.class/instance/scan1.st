generated
scan1
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X3 ].
	^ self scan1X24