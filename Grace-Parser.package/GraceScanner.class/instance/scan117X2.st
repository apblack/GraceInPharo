generated
scan117X2
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan117X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $o)
										or: [ (currentCharacter between: $q and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan117X2X2