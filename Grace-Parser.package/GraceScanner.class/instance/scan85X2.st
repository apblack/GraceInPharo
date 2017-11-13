generated
scan85X2
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan86 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan87 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $t)
												or: [ (currentCharacter between: $v and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan85X1