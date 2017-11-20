generated
scan47X28
	currentCharacter == $r
		ifTrue: [ ^ self scan52 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan47X11 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan47X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan47X13 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan47X12 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan47X3 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan47X19 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan47X18 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan47X17 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	true
		ifTrue:
			[ self scan47X27 ].
	^ self reportLastMatch