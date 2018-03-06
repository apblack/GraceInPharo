generated
scan1X22
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(55) ].
	currentCharacter isOpenOxfordBracket
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter isCloseOxfordBracket
		ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scan1X14 ].
	(currentCharacter isLineSeparator
		or: [ currentCharacter == Character lf ])
		ifTrue:
			[ ^ self scan1X18 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan1X17 ].
	('&+|' includes: currentCharacter)
		ifTrue:
			[ ^ self scan1X10 ].
	^ self scan1X21