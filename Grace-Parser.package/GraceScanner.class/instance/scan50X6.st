generated
scan50X6
	self recordMatch: #(46).
	self step.
	currentCharacter == $x
		ifTrue:
			[ ^ self scan50X6X1 ].
	(currentCharacter <= $w
		or: [ (currentCharacter between: $y and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch