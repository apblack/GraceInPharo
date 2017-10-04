generated
scan1X29
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan1X8 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan1X14 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan1X11 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan1X24 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X13 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan1X16 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan6 ].
	^ self scan1X28