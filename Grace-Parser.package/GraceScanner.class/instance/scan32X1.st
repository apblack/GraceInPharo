generated
scan32X1
	self recordMatch: #(45 59).
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan35 ].
	(currentCharacter isConnectorPunctuation
		or: [ '"lnrt{}' includes: currentCharacter ])
		ifTrue: [ ^ self scan33 ].
	(currentCharacter isDashPunctuation
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $. and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or: [ ('^|~' includes: currentCharacter)
																or: [ (currentCharacter
																		between: (Character value: 8804)
																		and: (Character value: 8805))
																		or: [ currentCharacter = (Character value: 8901) ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character space)
						or: [ (currentCharacter between: $' and: $))
								or: [ currentCharacter == $,
										or: [ (currentCharacter between: $0 and: $9)
												or: [ currentCharacter == $;
														or: [ (currentCharacter between: $A and: $T)
																or: [ (currentCharacter between: $V and: $[)
																		or: [ currentCharacter == $]
																				or: [ (currentCharacter between: $` and: $k)
																						or: [ currentCharacter == $m
																								or: [ (currentCharacter between: $o and: $q)
																										or: [ currentCharacter == $s
																												or: [ (currentCharacter between: $v and: $z)
																														or: [ (currentCharacter
																																between: (Character value: 127)
																																and: (Character value: 8231))
																																or: [ (currentCharacter
																																		between: (Character value: 8233)
																																		and: (Character value: 8803))
																																		or: [ (currentCharacter
																																				between: (Character value: 8806)
																																				and: (Character value: 8900))
																																				or: [ currentCharacter >= (Character value: 8902) ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ self scan32X1X1 ].
	^ self reportLastMatch