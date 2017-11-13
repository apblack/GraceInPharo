generated
scan18X5
	currentCharacter == $m
		ifTrue:
			[ ^ self scan18X2 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan19 ].
	currentCharacter == $s
		ifTrue:
			[ ^ self scan18X3 ].
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
		ifTrue:
			[ self scan18X4 ].
	^ self reportLastMatch