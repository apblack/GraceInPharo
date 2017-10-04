generated
scan89X1X1
	self recordMatch: #(40 49).
	(self scanForString: 'ss')
		ifTrue:
			[ ^ self scan89X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $r)
										or: [ currentCharacter between: $t and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan89X1X1X3