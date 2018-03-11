generated
scan28X32
	currentCharacter == $=
		ifTrue:
			[ ^ self scan28X25 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan28X14 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan28X18 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan28X24 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan28X23 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan28X7 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan28X11 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan28X2 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan28X3 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan28X10 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan28X6 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan28X9 ].
	^ self scan28X31