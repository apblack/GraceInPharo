generated
scan50X31
	currentCharacter == $S
		ifTrue:
			[ ^ self scan50X17 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan50X16 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan50X23 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan50X22 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan50X9 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan51 ].
	currentCharacter == $d
		ifTrue:
			[ ^ self scan50X4 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan50X6 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan50X10 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan52 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan50X8 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan54 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan50X1 ].
	^ self scan50X30