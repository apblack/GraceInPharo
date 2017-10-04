generated
scan26
	[ self recordMatch: #(39 42).
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	(currentCharacter == Character lf
		or: [ currentCharacter =
				(Character value: 8232) ])
		ifTrue: [ ^ self scan24 ].
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self scan26X1