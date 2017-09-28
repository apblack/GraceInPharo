generated
scan14X27
	currentCharacter == $w
		ifTrue: [ ^ self scan14X5 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $}
		ifTrue: [ ^ self scan14X22 ].
	currentCharacter = (Character value: 8249)
		ifTrue: [ ^ self scan14X21 ].
	currentCharacter = (Character value: 8250)
		ifTrue: [ ^ self scan14X20 ].
	currentCharacter = (Character value: 8594)
		ifTrue: [ ^ self scan14X19 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan21 ].
	(currentCharacter isSpecial
		or: [ (currentCharacter between: $# and: $$)
				or: [ '.^' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan19 ].
	^ self scan15