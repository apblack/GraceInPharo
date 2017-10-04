generated
scan107
	self recordMatch: #(40 49).
	(self scanForString: 'rr')
		ifTrue:
			[ ^ self scan107X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ currentCharacter between: $s and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan107X3