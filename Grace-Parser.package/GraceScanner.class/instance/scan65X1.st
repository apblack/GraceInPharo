generated
scan65X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan65X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ currentCharacter between: $c and: $z ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan65X1X2