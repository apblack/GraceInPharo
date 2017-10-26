generated
scan96X3
	[ self recordMatch: #(43).
	self step.
	currentCharacter ~~ (Character value: 8250) ] whileTrue.
	^ self reportLastMatch