generated
scan1X13
	[ self recordMatch: #(54).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter isDecimalDigit
				ifTrue: [ [ self recordMatch: #(54).
					self step.
					currentCharacter isDecimalDigit ] whileTrue.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan3 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ self step.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ [ self recordMatch: #(56).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDecimalDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch