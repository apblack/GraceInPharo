generated
scan66X1X1X1
	self recordMatch: #(34 39 49).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan67 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan66X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan66X1X1X1X2