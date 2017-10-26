generated
scan36X2
	self recordMatch: #(42).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(42 56).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan27 ].
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue ].
	^ self scan36X2X1