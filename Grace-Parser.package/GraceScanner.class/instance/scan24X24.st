generated
scan24X24
	currentCharacter == $,
		ifTrue: [ ^ self scan24X18 ].
	currentCharacter isDashPunctuation
		ifTrue: [ ^ self scan24X2 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan24X5 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan24X4 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan24X1 ].
	currentCharacter == $;
		ifTrue: [ ^ self scan24X17 ].
	currentCharacter == $=
		ifTrue: [ ^ self scan24X3 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan24X11 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan31 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan24X10 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan45 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan46 ].
	^ self scan24X23