generated
scan19X5
	self recordMatch: #(39 42).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self scan19X5X1 ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	currentCharacter = (Character value: 8232)
		ifTrue: [ ^ self scan24 ].
	^ self scan19X5X2