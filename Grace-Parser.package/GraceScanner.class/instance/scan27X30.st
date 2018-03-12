generated
scan27X30
	currentCharacter == $o
		ifTrue:
			[ ^ self scan27X9 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan27X5 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan27X8 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan27X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan27X15 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan27X14 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan27X21 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan27X20 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan27X19 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	true
		ifTrue:
			[ self scan27X29 ].
	^ self reportLastMatch