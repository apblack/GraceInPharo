generated
scan33X1X1X1
	self recordMatch: #(42).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan33X1X1X1X1 ].
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch