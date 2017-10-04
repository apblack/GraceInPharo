generated
scan73X12
	self recordMatch: #(40 41).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ ^ self scan78 ].
	(currentCharacter <= Character arrowDown
		or: [ (currentCharacter between: $! and: $\)
				or: [ (currentCharacter between: $^ and: (Character value: 159))
						or: [ (currentCharacter
								between: (Character value: 161)
								and: (Character value: 8249))
								or: [ currentCharacter >= (Character value: 8251) ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch