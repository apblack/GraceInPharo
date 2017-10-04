generated
scan19X9X1X1
	self recordMatch: #(16 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan19X9X1X1X1