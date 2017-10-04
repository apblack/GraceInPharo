generated
scan68X1X1X1
	self recordMatch: #(5 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan68X1X1X1X1