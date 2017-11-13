generated
scan101X26
	currentCharacter == $t
		ifTrue: [ ^ self scan157 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan101X6 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan101X7 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan159 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan101X16 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan101X15 ].
	currentCharacter =
		(Character value: 8249)
		ifTrue:
			[ ^ self scan101X14 ].
	currentCharacter =
		(Character value: 8250)
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter =
		(Character value: 8594)
		ifTrue:
			[ ^ self scan101X13 ].
	currentCharacter =
		(Character value: 10214)
		ifTrue: [ ^ self scan112 ].
	currentCharacter =
		(Character value: 10215)
		ifTrue: [ ^ self scan113 ].
	^ self scan101X25