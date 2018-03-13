generated
scan27X20
	self recordMatch: #(37 41).
	self step.
	currentCharacter ~~ (Character value: 8250)
		ifTrue: [ [ self recordMatch: #(41).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch