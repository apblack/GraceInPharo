generated
scan1X18
	[ self recordMatch: #(44).
	self step.
	currentCharacter isSpaceSeparator ] whileTrue.
	^ self reportLastMatch