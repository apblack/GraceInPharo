generated
scan101X10
	self recordMatch: #(30 44).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan113 ].
	(currentCharacter <= $\
		or: [ (currentCharacter between: $^ and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch