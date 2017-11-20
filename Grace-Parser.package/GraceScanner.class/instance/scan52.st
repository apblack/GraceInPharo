generated
scan52
	self recordMatch: #(45).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan52X1 ].
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(45).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch