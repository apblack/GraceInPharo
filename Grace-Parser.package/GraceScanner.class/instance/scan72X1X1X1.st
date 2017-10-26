generated
scan72X1X1X1
	self recordMatch: #(32 42 53).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan73 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter isSpaceSeparator
		ifTrue:
			[ ^ self scan72X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan72X1X1X1X2