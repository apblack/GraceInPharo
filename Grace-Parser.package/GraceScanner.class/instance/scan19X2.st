generated
scan19X2
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan19X2X1 ].
	^ self scan19X2X2