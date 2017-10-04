generated
scan54X2
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan54X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $o)
										or: [ currentCharacter between: $q and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan54X2X1