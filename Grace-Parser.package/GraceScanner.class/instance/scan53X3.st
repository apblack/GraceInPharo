generated
scan53X3
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan53X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan54 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ (currentCharacter between: $p and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan53X2