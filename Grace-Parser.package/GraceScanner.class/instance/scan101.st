generated
scan101
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $h
		ifTrue:
			[ ^ self scan101X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $g)
										or: [ currentCharacter between: $i and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan101X3