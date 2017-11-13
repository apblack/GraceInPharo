generated
scan77X2
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $b
		ifTrue: [ ^ self scan78 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan79 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan82 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ (currentCharacter between: $w and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan77X1