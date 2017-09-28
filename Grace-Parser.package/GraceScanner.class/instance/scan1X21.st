generated
scan1X21
	[ self recordMatch: #(35).
	self step.
	currentCharacter == Character cr
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] ] whileTrue.
	^ self reportLastMatch