generated
scan19X1
	self recordMatch: #(2 39 55).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self scan19X1X1 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	^ self scan19X1X2