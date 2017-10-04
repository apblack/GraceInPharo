generated
scan1X28
	currentCharacter == $d
		ifTrue: [ ^ self scan11 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan1X6 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan1X10 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan1X12 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan18 ].
	^ self scan1X27