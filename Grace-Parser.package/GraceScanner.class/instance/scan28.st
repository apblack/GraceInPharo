generated
scan28
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scan28X4 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan28X29 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan28X28 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan28X27 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan28X19 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan28X17 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan28X26 ].
	^ self scan28X32