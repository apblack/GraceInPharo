generated
scan28X8
	self recordMatch: #(42).
	self step.
	currentCharacter == $x
		ifTrue:
			[ ^ self scan28X8X1 ].
	(currentCharacter <= $w
		or: [ (currentCharacter between: $y and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch