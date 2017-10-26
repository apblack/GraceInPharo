generated
scan102X1X1X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $n
		ifTrue:
			[ ^ self scan102X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $m)
										or: [ (currentCharacter between: $o and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan102X1X1X1X3