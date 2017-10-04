generated
scan52
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $x
		ifTrue: [ ^ self scan53 ].
	^ self scan52X1