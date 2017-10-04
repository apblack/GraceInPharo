generated
scan115
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan115X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan115X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $t)
										or: [ currentCharacter between: $v and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan115X4