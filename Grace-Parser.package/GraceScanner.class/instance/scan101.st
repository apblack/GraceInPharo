generated
scan101
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan101X8 ].
	currentCharacter == $"
		ifTrue:
			[ ^ self scan101X21 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scan101X1 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan101X20 ].
	currentCharacter == $)
		ifTrue:
			[ ^ self scan101X19 ].
	currentCharacter == $,
		ifTrue:
			[ ^ self scan101X18 ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scan101X3 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan104 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan101X2 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan101X17 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan101X5 ].
	currentCharacter == $U
		ifTrue: [ ^ self scan109 ].
	^ self scan101X27