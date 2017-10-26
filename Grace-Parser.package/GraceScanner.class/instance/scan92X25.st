generated
scan92X25
	currentCharacter == $d
		ifTrue: [ ^ self scan113 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan115 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan92X5 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan117 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan121 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan122 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan127 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan128 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan131 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan133 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan92X6 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan92X7 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan135 ].
	^ self scan92X24