generated
scan33X1
	self recordMatch: #(45).
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan35 ].
	(currentCharacter isConnectorPunctuation
		or: [ '"\lnrt{}' includes: currentCharacter ])
		ifTrue: [ ^ self scan33 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ (currentCharacter between: $# and: $T)
								or: [ (currentCharacter between: $V and: $[)
										or: [ (currentCharacter between: $] and: $^)
												or: [ (currentCharacter between: $` and: $k)
														or: [ currentCharacter == $m
																or: [ (currentCharacter between: $o and: $q)
																		or: [ currentCharacter == $s
																				or: [ (currentCharacter between: $v and: $z)
																						or: [ currentCharacter == $|
																								or: [ (currentCharacter between: $~ and: (Character value: 8231))
																										or: [ currentCharacter >= (Character value: 8233) ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ self scan33X1X1 ].
	^ self reportLastMatch