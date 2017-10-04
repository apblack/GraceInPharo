generated
scan19X25
	currentCharacter == $a
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan52 ].
	currentCharacter == $f
		ifTrue: [ ^ self scan19X2 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan54 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan56 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan57 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan62 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan63 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan66 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan68 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan19X6 ].
	^ self scan19X24