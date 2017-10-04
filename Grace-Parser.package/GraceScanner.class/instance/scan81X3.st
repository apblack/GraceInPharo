generated
scan81X3
	[ self recordMatch: #(40).
	self step.
	currentCharacter ~~ (Character value: 8250) ] whileTrue.
	^ self reportLastMatch