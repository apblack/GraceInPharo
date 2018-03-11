generated
scan28X21
	self recordMatch: #(6 40).
	self step.
	currentCharacter ~~ (Character value: 8250)
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch