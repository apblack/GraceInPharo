generated
scan1
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X15 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(61) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self scan1X23