generated
scan14X28
	currentCharacter == $c
		ifTrue: [ ^ self scan24 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan14X17 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan14X7 ].
	currentCharacter == $f
		ifTrue: [ ^ self scan14X9 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan14X6 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan14X8 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan14X14 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan14X13 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan14X3 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan14X16 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan14X15 ].
	^ self scan14X27