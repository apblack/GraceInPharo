generated
scan28X31
	currentCharacter == $p
		ifTrue:
			[ ^ self scan28X5 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan28X8 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan28X13 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan28X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan28X16 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan28X15 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan28X22 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan28X21 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan28X20 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	true
		ifTrue:
			[ self scan28X30 ].
	^ self reportLastMatch