generated
scan27X3
	self recordMatch: #(39).
	self step.
	currentCharacter == $x
		ifTrue:
			[ ^ self scan27X3X1 ].
	(currentCharacter <= $w
		or: [ (currentCharacter between: $y and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(39).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch