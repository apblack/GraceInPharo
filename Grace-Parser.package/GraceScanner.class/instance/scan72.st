generated
scan72
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan72X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $s)
										or: [ currentCharacter between: $u and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan72X3