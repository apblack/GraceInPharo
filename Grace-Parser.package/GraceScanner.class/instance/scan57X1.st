generated
scan57X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $j
		ifTrue:
			[ ^ self scan57X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $i)
										or: [ currentCharacter between: $k and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan57X1X2