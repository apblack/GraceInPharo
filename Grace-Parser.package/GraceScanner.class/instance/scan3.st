generated
scan3
	self step.
	currentCharacter isDecimalDigit
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			currentCharacter isDecimalDigit ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isDashPunctuation or: [ currentCharacter == $+ ])
		ifTrue: [ self step.
			currentCharacter isDecimalDigit
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					currentCharacter isDecimalDigit ] whileTrue ] ].
	^ self reportLastMatch