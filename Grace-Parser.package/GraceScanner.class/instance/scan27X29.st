generated
scan27X29
	self recordMatch: #(1 41).
	self step.
	currentCharacter ~~ (Character value: 8250)
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch