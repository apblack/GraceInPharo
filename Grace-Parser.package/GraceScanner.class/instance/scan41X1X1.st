generated
scan41X1X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $w
		ifTrue:
			[ ^ self scan41X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $v)
										or: [ currentCharacter between: $x and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan41X1X1X2