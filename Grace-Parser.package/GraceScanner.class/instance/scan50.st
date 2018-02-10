generated
scan50
	self step.
	currentCharacter == $#
		ifTrue:
			[ ^ self scan50X7 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan50X28 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan50X27 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan50X26 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scan50X18 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan50X15 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan50X25 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan50X24 ].
	^ self scan50X31