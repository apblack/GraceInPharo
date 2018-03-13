generated
scan1X17
	self recordMatch: #(44).
	self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue ].
	^ self reportLastMatch