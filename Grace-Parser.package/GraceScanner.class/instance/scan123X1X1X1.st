generated
scan123X1X1X1
	self recordMatch: #(32 43 53).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan124 ].
	currentCharacter isSpaceSeparator
		ifTrue:
			[ ^ self scan123X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan123X1X1X1X3