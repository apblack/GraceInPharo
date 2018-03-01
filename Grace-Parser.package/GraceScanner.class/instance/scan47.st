generated
scan47
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scan47X6 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan47X27 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan47X26 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan47X25 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan47X17 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan47X15 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan47X24 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan47X23 ].
	^ self scan47X30