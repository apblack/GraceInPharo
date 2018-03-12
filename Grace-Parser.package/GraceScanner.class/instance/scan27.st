generated
scan27
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scan27X4 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan27X28 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan27X27 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan27X26 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan27X18 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan27X16 ].
	^ self scan27X31