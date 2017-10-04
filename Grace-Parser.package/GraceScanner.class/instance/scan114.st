generated
scan114
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $r
		ifTrue: [ ^ self scan115 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan114X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $x)
												or: [ currentCharacter == $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan114X3