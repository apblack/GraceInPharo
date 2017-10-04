generated
scan102X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $t
		ifTrue:
			[ ^ self scan102X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $s)
										or: [ currentCharacter between: $u and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan102X1X3