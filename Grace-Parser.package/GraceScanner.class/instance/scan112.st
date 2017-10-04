generated
scan112
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan112X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ currentCharacter between: $f and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan112X3