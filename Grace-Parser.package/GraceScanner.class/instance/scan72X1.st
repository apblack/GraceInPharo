generated
scan72X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan72X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ currentCharacter between: $c and: $z ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan72X1X2