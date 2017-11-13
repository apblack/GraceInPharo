generated
scan43X2
	self recordMatch: #(43).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(43 57).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan38 ].
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self scan43X2X1