generated
scan72X2
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $a
		ifTrue:
			[ ^ self scan72X1 ].
	^ self scan72X2X1