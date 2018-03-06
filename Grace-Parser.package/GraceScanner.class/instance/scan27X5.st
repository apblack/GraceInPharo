generated
scan27X5
	self recordMatch: #(41).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan27X5X1 ].
	(currentCharacter <= $o
		or: [ (currentCharacter between: $q and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch