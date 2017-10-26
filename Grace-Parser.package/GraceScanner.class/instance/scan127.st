generated
scan127
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $r
		ifTrue:
			[ ^ self scan127X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan127X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $t)
												or: [ (currentCharacter between: $v and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan127X4