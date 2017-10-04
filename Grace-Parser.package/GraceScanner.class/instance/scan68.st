generated
scan68
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan69 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan68X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $x)
												or: [ currentCharacter == $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan68X2