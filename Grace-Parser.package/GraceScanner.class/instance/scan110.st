generated
scan110
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue: [ ^ self scan111 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan110X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $s)
										or: [ currentCharacter between: $u and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan110X3