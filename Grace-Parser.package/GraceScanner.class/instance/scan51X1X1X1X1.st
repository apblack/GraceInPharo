generated
scan51X1X1X1X1
	self recordMatch: #(46).
	self step.
	currentCharacter == $n
		ifTrue:
			[ ^ self scan51X1X1X1X1X1 ].
	(currentCharacter <= $m
		or: [ (currentCharacter between: $o and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch