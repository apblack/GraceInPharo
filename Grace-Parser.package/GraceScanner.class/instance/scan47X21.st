generated
scan47X21
	self recordMatch: #(37 46).
	self step.
	currentCharacter ~~ (Character value: 8250)
		ifTrue: [ [ self recordMatch: #(46).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch