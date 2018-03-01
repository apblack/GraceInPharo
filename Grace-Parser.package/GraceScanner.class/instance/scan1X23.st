generated
scan1X23
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $S
		ifTrue:
			[ ^ self scan1X7 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan1X19 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan1X18 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan22 ].
	^ self scan1X22