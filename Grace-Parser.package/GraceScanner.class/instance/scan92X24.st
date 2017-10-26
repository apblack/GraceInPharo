generated
scan92X24
	currentCharacter isOpenPunctuation
		ifTrue:
			[ ^ self scan92X16 ].
	currentCharacter isClosePunctuation
		ifTrue:
			[ ^ self scan92X15 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan92X14 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue:
			[ ^ self scan92X13 ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self scan103 ].
	currentCharacter =
		(Character value: 10215)
		ifTrue: [ ^ self scan104 ].
	currentCharacter isDecimalDigit
		ifTrue: [ ^ self scan97 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue: [ ^ self scan93 ].
	currentCharacter isSpaceSeparator
		ifTrue:
			[ ^ self scan92X9 ].
	^ self scan92X23