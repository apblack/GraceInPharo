generated
scan73X14
	self recordMatch: #(40).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	(currentCharacter <= $\
		or: [ (currentCharacter between: $^ and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch