generated
scan62X2X1X1X1X1
	self recordMatch: #(36 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan62X2X1X1X1X1X1