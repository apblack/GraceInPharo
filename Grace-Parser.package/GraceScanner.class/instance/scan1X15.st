generated
scan1X15
	[ self recordMatch: #(46).
	self step.
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self reportLastMatch