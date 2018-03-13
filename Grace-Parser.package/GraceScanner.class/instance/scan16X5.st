generated
scan16X5
	currentCharacter == $b
		ifTrue:
			[ ^ self scan16X2 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scan16X3 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan16X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $m)
										or: [ (currentCharacter between: $o and: $t)
												or: [ (currentCharacter between: $v and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan16X4 ].
	^ self reportLastMatch