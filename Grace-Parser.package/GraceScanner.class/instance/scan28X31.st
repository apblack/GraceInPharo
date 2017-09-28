generated
scan28X31
	currentCharacter == $d
		ifTrue:
			[ ^ self scan28X18 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan28X8 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan28X10 ].
	currentCharacter == $i
		ifTrue:
			[ ^ self scan28X7 ].
	currentCharacter == $m
		ifTrue:
			[ ^ self scan28X9 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan28X4 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan28X15 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan28X14 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan28X5 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan28X17 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan28X16 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan28X6 ].
	^ self scan28X30