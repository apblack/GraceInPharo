generated
scan41X1X1X1X1
	self recordMatch: #(21 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan41X1X1X1X1X1