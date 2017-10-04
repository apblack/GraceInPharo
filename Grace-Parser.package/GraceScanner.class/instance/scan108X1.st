generated
scan108X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan108X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ currentCharacter between: $c and: $z ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan108X1X3