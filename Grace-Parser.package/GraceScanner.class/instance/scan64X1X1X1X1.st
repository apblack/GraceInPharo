generated
scan64X1X1X1X1
	self recordMatch: #(14 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan64X1X1X1X1X1