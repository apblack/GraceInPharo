generated
scan27X32
	currentCharacter == $=
		ifTrue:
			[ ^ self scan27X25 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan27X14 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan27X18 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan27X24 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan27X23 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan27X8 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan27X11 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan27X2 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan27X4 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan27X10 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan27X7 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan27X3 ].
	^ self scan27X31