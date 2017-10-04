generated
scan5
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(52).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(52).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch