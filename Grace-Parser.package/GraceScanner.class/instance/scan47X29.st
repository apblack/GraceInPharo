generated
scan47X29
	currentCharacter == $=
		ifTrue:
			[ ^ self scan47X22 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan47X15 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan47X21 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan47X20 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan47X8 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan47X4 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan47X5 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan47X9 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan49 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan47X7 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan51 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan47X1 ].
	^ self scan47X28