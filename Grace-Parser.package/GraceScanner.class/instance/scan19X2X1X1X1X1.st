generated
scan19X2X1X1X1X1
	self recordMatch: #(29 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan19X2X1X1X1X1X1