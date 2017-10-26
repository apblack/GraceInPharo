generated
scan118
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $h
		ifTrue:
			[ ^ self scan118X1 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan119 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $g)
										or: [ (currentCharacter between: $i and: $s)
												or: [ (currentCharacter between: $u and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan118X3