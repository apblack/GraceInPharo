generated
scan73X8X1
	[ self recordMatch: #(40 42 44).
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan75 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue: [ ^ self scan74 ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self scan73X8X1X2