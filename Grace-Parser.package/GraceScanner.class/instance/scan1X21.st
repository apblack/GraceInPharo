generated
scan1X21
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter isOpenOxfordBracket
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	currentCharacter isCloseOxfordBracket
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scan1X13 ].
	(currentCharacter isLineSeparator
		or: [ currentCharacter == Character lf ])
		ifTrue:
			[ ^ self scan1X17 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan1X16 ].
	('&+|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X9 ].
	^ self scan1X20