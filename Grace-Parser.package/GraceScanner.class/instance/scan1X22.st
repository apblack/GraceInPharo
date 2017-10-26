generated
scan1X22
	currentCharacter == $d
		ifTrue: [ ^ self scan11 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X5 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan22 ].
	^ self scan1X21