generated
scan98
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	currentCharacter == $x
		ifTrue: [ ^ self scan99 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $w)
										or: [ currentCharacter between: $y and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan98X2