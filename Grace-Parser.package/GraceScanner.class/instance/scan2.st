generated
scan2
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(44).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch