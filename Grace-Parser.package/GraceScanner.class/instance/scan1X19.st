generated
scan1X19
	[ self recordMatch: #(46).
	self step.
	currentCharacter isSpaceSeparator ] whileTrue.
	^ self reportLastMatch