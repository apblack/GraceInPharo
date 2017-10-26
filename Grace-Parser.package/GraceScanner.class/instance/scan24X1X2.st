generated
scan24X1X2
	(currentCharacter == Character lf
		or: [ (currentCharacter between: Character cr and: Character space)
				or: [ (currentCharacter between: $' and: $))
						or: [ currentCharacter == $,
								or: [ (currentCharacter between: $0 and: $9)
										or: [ currentCharacter == $;
												or: [ (currentCharacter between: $A and: $[)
														or: [ currentCharacter == $]
																or: [ (currentCharacter between: $_ and: $z)
																		or: [ currentCharacter == $}
																				or: [ (currentCharacter
																						between: (Character value: 127)
																						and: (Character value: 8803))
																						or: [ (currentCharacter
																								between: (Character value: 8806)
																								and: (Character value: 8900))
																								or: [ currentCharacter >= (Character value: 8902) ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch