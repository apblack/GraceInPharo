generated
scanForTokenX2
	[ self recordMatch: #(6).
	self step.
	(currentCharacter between: Character tab and: Character cr)
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch