generated
scan28X6X1
	self recordMatch: #(42).
	self step.
	currentCharacter == $i
		ifTrue:
			[ ^ self scan28X6X1X1 ].
	(currentCharacter <= $h
		or: [ (currentCharacter between: $j and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(42).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch