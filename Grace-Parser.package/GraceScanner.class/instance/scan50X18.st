generated
scan50X18
	self recordMatch: #(46).
	(self scanForString: '..')
		ifTrue: [ self recordMatch: #(38 46).
			self step.
			currentCharacter ~~ (Character value: 8250)
				ifTrue: [ [ self recordMatch: #(46).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $-
		or: [ (currentCharacter between: $/ and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch