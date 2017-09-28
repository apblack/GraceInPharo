generated
scan1X26
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X13 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan1X15 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan11 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X1 ].
	^ self scan1X25