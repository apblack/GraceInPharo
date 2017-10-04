generated
scan64X1
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan64X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $t)
										or: [ currentCharacter between: $v and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan64X1X2