generated
scan19X6X1X1
	self recordMatch: #(28 39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	^ self scan19X6X1X1X1