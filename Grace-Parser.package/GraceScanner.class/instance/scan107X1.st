generated
scan107X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $i
		ifTrue:
			[ ^ self scan107X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $h)
										or: [ currentCharacter between: $j and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan107X1X3