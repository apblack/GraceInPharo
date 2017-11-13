generated
scan147
	self recordMatch: #(44 54).
	self step.
	currentCharacter == $r
		ifTrue: [ ^ self scan148 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan149 ].
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
		ifTrue: [ ^ self scan108 ].
	^ self scan147X2