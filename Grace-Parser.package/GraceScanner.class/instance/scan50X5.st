generated
scan50X5
	self recordMatch: #(46).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan50X5X1 ].
	(currentCharacter <= $k
		or: [ (currentCharacter between: $m and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch