generated
scan101X27
	currentCharacter == $[
		ifTrue:
			[ ^ self scan101X11 ].
	currentCharacter == $]
		ifTrue:
			[ ^ self scan101X10 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan114 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan115 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan123 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan126 ].
	currentCharacter == $f
		ifTrue: [ ^ self scan129 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan130 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan137 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan139 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan147 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan150 ].
	currentCharacter == $s
		ifTrue: [ ^ self scan154 ].
	^ self scan101X26