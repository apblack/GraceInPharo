generated
scan73X8
	self recordMatch: #(40 42).
	self step.
	currentCharacter == Character lf
		ifTrue:
			[ ^ self scan73X8X1 ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan75 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	^ self scan73X8X3