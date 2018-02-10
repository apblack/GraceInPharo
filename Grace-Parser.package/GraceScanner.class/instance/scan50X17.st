generated
scan50X17
	self recordMatch: #(46).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan50X5 ].
	(currentCharacter <= $d
		or: [ (currentCharacter between: $f and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch