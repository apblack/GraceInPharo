generated
scan96
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan96X1 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan97 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $f and: $h)
												or: [ currentCharacter between: $j and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan96X3