generated
scan1
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan1X17 ].
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(58) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan1X25