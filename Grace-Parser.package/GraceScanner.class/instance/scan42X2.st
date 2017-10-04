generated
scan42X2
	self recordMatch: #(18 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan42X2X1