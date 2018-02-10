generated
scan50X7
	self recordMatch: #(46).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan50X7X1 ].
	(currentCharacter <= $o
		or: [ (currentCharacter between: $q and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch