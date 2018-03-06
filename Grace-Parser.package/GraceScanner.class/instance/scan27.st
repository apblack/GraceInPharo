generated
scan27
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scan27X5 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan27X29 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan27X28 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan27X27 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan27X19 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan27X17 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan27X26 ].
	^ self scan27X32