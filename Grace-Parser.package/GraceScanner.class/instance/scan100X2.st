generated
scan100X2
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan100X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $o)
										or: [ currentCharacter between: $q and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan100X2X2