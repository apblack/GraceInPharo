generated
scan71X1X1X1X1
	self recordMatch: #(25 43 54).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ ('µæ' includes: currentCharacter)
												or: [ currentCharacter =
														(Character value: 960) ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan71X1X1X1X1X1