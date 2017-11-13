generated
scan52X4
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan52X1 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan52X2 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $r)
												or: [ (currentCharacter between: $t and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan52X3