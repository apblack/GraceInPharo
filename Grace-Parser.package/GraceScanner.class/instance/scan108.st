generated
scan108
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $r
		ifTrue:
			[ ^ self scan108X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan108X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $t)
												or: [ currentCharacter between: $v and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan108X4