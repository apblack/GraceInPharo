generated
scan108X2X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $f
		ifTrue:
			[ ^ self scan108X2X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ currentCharacter between: $g and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan108X2X1X3