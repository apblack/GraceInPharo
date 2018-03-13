generated
scan1X25
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan1X21 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan1X20 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $c
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan11 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan15 ].
	^ self scan1X24