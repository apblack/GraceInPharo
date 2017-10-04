generated
scan73X7
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $s
		ifTrue:
			[ ^ self scan73X7X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $r)
										or: [ currentCharacter between: $t and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan73X7X3