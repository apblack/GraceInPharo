generated
scan97X1X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan97X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ currentCharacter between: $f and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan97X1X1X3