generated
scan1X23
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter isOpenOxfordBracket
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter isCloseOxfordBracket
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scan1X15 ].
	(currentCharacter isLineSeparator
		or: [ currentCharacter == Character lf ])
		ifTrue:
			[ ^ self scan1X19 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan1X18 ].
	('&+|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X11 ].
	^ self scan1X22