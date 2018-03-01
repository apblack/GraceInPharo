generated
scan1X15
	self recordMatch: #(49).
	self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ [ self recordMatch: #(49).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue ].
	^ self reportLastMatch