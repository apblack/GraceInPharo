generated
scan1X24
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
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
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan4 ].
	^ self scan1X23