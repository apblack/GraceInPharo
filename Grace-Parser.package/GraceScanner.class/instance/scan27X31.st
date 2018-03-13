generated
scan27X31
	currentCharacter == $p
		ifTrue:
			[ ^ self scan27X6 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan27X9 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan27X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan27X16 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan27X15 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan27X13 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan27X22 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan27X21 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan27X20 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	true
		ifTrue:
			[ self scan27X30 ].
	^ self reportLastMatch