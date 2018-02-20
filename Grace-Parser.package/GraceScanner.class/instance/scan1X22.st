generated
scan1X22
	currentCharacter == $=
		ifTrue:
			[ ^ self scan1X9 ].
	currentCharacter == $S
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $[
		ifTrue:
			[ ^ self scan1X18 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan1X17 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan25 ].
	^ self scan1X21