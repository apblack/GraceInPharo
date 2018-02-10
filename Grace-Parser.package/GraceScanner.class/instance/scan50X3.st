generated
scan50X3
	self recordMatch: #(46).
	self step.
	currentCharacter == $r
		ifTrue:
			[ ^ self scan50X3X1 ].
	(currentCharacter <= $q
		or: [ (currentCharacter between: $s and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch