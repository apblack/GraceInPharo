generated
scan1X17
	[ self recordMatch: #(41).
	self step.
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self reportLastMatch