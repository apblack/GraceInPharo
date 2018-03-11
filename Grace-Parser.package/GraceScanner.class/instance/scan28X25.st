generated
scan28X25
	self recordMatch: #(5 40).
	self step.
	currentCharacter ~~ (Character value: 8250)
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch