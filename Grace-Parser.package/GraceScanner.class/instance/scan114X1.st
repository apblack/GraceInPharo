generated
scan114X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan114X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $o)
										or: [ currentCharacter between: $q and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan114X1X3