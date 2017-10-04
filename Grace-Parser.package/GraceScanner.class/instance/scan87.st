generated
scan87
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $k
		ifTrue:
			[ ^ self scan87X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $j)
										or: [ currentCharacter between: $l and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan87X4