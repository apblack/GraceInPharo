generated
scan76
	[ self recordMatch: #(40 42).
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan75 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue: [ ^ self scan74 ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self scan76X2