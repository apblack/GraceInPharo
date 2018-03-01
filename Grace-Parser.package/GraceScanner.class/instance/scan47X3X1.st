generated
scan47X3X1
	self recordMatch: #(46).
	self step.
	currentCharacter == $i
		ifTrue:
			[ ^ self scan47X3X1X1 ].
	(currentCharacter <= $h
		or: [ (currentCharacter between: $j and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch