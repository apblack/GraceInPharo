generated
scan68X3
	currentCharacter == $m
		ifTrue: [ ^ self scan69 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan70 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan68X1 ].
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
		ifTrue: [ ^ self scan46 ].
	^ self scan68X2