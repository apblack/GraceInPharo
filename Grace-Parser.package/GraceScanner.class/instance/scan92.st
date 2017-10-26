generated
scan92
	self step.
	currentCharacter == Character cr
		ifTrue:
			[ ^ self scan92X8 ].
	currentCharacter == $"
		ifTrue:
			[ ^ self scan92X21 ].
	currentCharacter == $(
		ifTrue:
			[ ^ self scan92X20 ].
	^ self scan92X26