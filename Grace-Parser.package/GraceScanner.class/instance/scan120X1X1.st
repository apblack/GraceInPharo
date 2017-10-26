generated
scan120X1X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $c
		ifTrue:
			[ ^ self scan120X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $b)
										or: [ (currentCharacter between: $d and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan120X1X1X3