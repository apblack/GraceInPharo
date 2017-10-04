generated
scan50X1X1
	self recordMatch: #(19 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan50X1X1X1