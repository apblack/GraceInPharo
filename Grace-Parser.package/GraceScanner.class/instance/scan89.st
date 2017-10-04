generated
scan89
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan89X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan90 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ currentCharacter between: $p and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan89X3