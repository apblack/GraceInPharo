generated
scan1X19
	((currentCharacter between: $A and: $R)
		or: [ currentCharacter == $T
				or: [ (currentCharacter between: $V and: $Z)
						or: [ ('_b' includes: currentCharacter)
								or: [ (currentCharacter between: $g and: $h)
										or: [ (currentCharacter between: $j and: $l)
												or: [ ('nq' includes: currentCharacter)
														or: [ (currentCharacter between: $x and: $z)
																or: [ ('µæ' includes: currentCharacter)
																		or: [ currentCharacter =
																				(Character value: 960) ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan1X13 ].
	^ self reportLastMatch