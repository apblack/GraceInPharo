generated
scan28
	self step.
	currentCharacter == $"
		ifTrue:
			[ ^ self scan28X28 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan28X27 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan28X26 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan28X25 ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan28X2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan28X1 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan28X24 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan28X3 ].
	currentCharacter == $U
		ifTrue:
			[ ^ self scan28X19 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan28X11 ].
	currentCharacter == $c
		ifTrue: [ ^ self scan33 ].
	^ self scan28X31