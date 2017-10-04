generated
scan93
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $d
		ifTrue: [ ^ self scan94 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $c)
										or: [ currentCharacter between: $e and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan93X2