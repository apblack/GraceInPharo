generated
scan41
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $k
		ifTrue:
			[ ^ self scan41X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $j)
										or: [ currentCharacter between: $l and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan41X3