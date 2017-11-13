generated
scan132
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $h
		ifTrue: [ ^ self scan133 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan134 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $g)
										or: [ (currentCharacter between: $i and: $s)
												or: [ (currentCharacter between: $u and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan132X2