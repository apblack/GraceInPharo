generated
scan28X30
	currentCharacter == ${
		ifTrue:
			[ ^ self scan28X23 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan28X22 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan28X21 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue:
			[ ^ self scan28X20 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan30 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ '.^' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan29 ].
	true
		ifTrue:
			[ self scan28X29 ].
	^ self reportLastMatch