generated
scan1
	self recordMatch: #(35).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X14 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan1X22 ].
	^ self scan1X26