generated
scan112X1X1X1
	self recordMatch: #(34 40 49).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan113 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan112X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan112X1X1X1X3