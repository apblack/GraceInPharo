generated
scan1X12
	[ self recordMatch: #(56).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $9)
				ifTrue: [ [ self recordMatch: #(56).
					self step.
					currentCharacter between: $0 and: $9 ] whileTrue.
					('Ee' includes: currentCharacter)
						ifTrue: [ ^ self scan3 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x
		ifTrue: [ self step.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ [ self recordMatch: #(58).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch