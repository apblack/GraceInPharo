generated
scan47
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scan47X6 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan47X26 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan47X25 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan47X24 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan47X16 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan47X14 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan47X23 ].
	^ self scan47X29