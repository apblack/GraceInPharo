generated
scan54X3
	self recordMatch: #(1 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan54X3X1