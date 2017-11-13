generated
scan130X4
	currentCharacter == $m
		ifTrue: [ ^ self scan131 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan132 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan130X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $l)
										or: [ (currentCharacter between: $o and: $r)
												or: [ (currentCharacter between: $t and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	^ self scan130X3