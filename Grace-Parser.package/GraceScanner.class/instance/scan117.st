generated
scan117
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $m
		ifTrue:
			[ ^ self scan117X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan118 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan117X3 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $l)
										or: [ (currentCharacter between: $o and: $r)
												or: [ (currentCharacter between: $t and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan117X5