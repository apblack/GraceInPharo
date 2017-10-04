generated
scan96X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $f
		ifTrue:
			[ ^ self scan96X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ currentCharacter between: $g and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan96X1X3