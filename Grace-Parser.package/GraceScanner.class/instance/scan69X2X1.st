generated
scan69X2X1
	self recordMatch: #(30 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan69X2X1X1