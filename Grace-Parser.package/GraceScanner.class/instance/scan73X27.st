generated
scan73X27
	currentCharacter == $d
		ifTrue: [ ^ self scan96 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan98 ].
	currentCharacter == $f
		ifTrue:
			[ ^ self scan73X4 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan100 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan102 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan103 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan108 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan109 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan112 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan114 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan73X7 ].
	currentCharacter == $v
		ifTrue:
			[ ^ self scan73X9 ].
	currentCharacter == $w
		ifTrue: [ ^ self scan116 ].
	^ self scan73X26