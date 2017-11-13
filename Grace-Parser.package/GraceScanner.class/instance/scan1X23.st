generated
scan1X23
	currentCharacter == $[
		ifTrue:
			[ ^ self scan1X18 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan1X17 ].
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
	currentCharacter == $o
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X1 ].
	^ self scan1X22