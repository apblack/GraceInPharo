generated
scan102X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $o
		ifTrue:
			[ ^ self scan102X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $n)
										or: [ (currentCharacter between: $p and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan102X1X3