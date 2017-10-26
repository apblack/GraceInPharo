generated
scan105
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan105X1 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan105X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $r)
												or: [ (currentCharacter between: $t and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan105X4