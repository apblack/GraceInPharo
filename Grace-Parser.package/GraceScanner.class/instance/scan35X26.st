generated
scan35X26
	currentCharacter == $=
		ifTrue: [ ^ self scan35X6 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan47 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan35X12 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan35X11 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan52 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan53 ].
	currentCharacter == $d
		ifTrue: [ ^ self scan61 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan64 ].
	currentCharacter == $f
		ifTrue: [ ^ self scan67 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan68 ].
	currentCharacter == $m
		ifTrue: [ ^ self scan75 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan77 ].
	^ self scan35X25