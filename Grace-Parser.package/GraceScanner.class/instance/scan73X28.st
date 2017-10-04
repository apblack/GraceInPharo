generated
scan73X28
	currentCharacter == $"
		ifTrue:
			[ ^ self scan73X23 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan73X22 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan73X21 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan73X20 ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan73X2 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan73X6 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan80 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan73X1 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan73X13 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan73X5 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan86 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan88 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan89 ].
	^ self scan73X27