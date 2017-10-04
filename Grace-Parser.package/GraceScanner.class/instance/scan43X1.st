generated
scan43X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan43X1X1 ].
	^ self scan43X1X2