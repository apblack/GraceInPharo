generated
scan61X3
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan61X1 ].
	currentCharacter == $i
		ifTrue: [ ^ self scan62 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $f and: $h)
												or: [ (currentCharacter between: $j and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan46 ].
	^ self scan61X2