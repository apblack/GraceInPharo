generated
scan19X9
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan19X9X1 ].
	^ self scan19X9X2