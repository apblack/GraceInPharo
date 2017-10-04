generated
scan43X1X1X1
	self recordMatch: #(31 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan43X1X1X1X1