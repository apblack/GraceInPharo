generated
scan1X18
	[ self recordMatch: #(43).
	self step.
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	^ self reportLastMatch