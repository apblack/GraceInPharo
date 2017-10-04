generated
scan103X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $j
		ifTrue:
			[ ^ self scan103X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $i)
										or: [ currentCharacter between: $k and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan103X1X3