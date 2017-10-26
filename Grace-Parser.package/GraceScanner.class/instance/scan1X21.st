generated
scan1X21
	currentCharacter isOpenPunctuation
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter isClosePunctuation
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter =
		(Character value: 8249)
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	currentCharacter =
		(Character value: 10215)
		ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	currentCharacter isDecimalDigit
		ifTrue:
			[ ^ self scan1X13 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue:
			[ ^ self scan1X19 ].
	currentCharacter isSpaceSeparator
		ifTrue:
			[ ^ self scan1X18 ].
	^ self scan1X20