generated
scan66
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan66X1 ].
	^ self scan66X2