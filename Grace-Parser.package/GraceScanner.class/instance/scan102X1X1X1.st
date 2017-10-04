generated
scan102X1X1X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $o
		ifTrue:
			[ ^ self scan102X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $n)
										or: [ currentCharacter between: $p and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan102X1X1X1X3