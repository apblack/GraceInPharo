generated
scan92X10
	self recordMatch: #(22 43).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan104 ].
	(currentCharacter <= $\
		or: [ (currentCharacter between: $^ and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(43).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch