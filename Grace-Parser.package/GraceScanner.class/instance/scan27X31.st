generated
scan27X31
	currentCharacter == $;
		ifTrue:
			[ ^ self scan27X25 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan27X24 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan27X13 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan27X17 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan27X23 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan27X22 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan27X7 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan27X11 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan27X2 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan27X3 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan27X10 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan27X6 ].
	^ self scan27X30