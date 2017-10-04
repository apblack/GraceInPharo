generated
scan104X1X1X1
	self recordMatch: #(22 40 49).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan105 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan104X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan104X1X1X1X3