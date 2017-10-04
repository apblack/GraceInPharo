generated
scan99X1X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $u
		ifTrue:
			[ ^ self scan99X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $t)
										or: [ currentCharacter between: $v and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan99X1X1X3