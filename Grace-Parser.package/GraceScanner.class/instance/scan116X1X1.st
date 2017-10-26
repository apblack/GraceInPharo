generated
scan116X1X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $u
		ifTrue:
			[ ^ self scan116X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $t)
										or: [ (currentCharacter between: $v and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan116X1X1X3