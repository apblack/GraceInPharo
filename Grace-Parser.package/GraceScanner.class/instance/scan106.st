generated
scan106
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan106X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan107 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ (currentCharacter between: $p and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan106X3