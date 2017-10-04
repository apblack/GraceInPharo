generated
scan103
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $]
		ifTrue: [ ^ self scan77 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan103X1 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan104 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan106 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ currentCharacter between: $w and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan103X3