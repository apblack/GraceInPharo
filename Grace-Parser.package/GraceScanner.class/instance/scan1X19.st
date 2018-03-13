generated
scan1X19
	[ self recordMatch: #(44).
	self step.
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self reportLastMatch