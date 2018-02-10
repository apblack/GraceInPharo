generated
scan1X23
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
	currentCharacter == $o
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X1 ].
	^ self scan1X22