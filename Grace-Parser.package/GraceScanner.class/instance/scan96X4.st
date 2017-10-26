generated
scan96X4
	[ self recordMatch: #(43).
	self step.
	currentCharacter ~~ (Character value: 8250) ] whileTrue.
	^ self reportLastMatch