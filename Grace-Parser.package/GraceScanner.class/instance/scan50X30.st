generated
scan50X30
	currentCharacter == $r
		ifTrue: [ ^ self scan55 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan50X12 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan50X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan50X14 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan50X13 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan50X3 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan50X21 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan50X20 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan50X19 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	true
		ifTrue:
			[ self scan50X29 ].
	^ self reportLastMatch