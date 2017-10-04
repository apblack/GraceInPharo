generated
scan73X10
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan73X10X2