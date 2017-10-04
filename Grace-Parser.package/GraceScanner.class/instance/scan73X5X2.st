generated
scan73X5X2
	(currentCharacter <= Character space
		or: [ currentCharacter == $"
				or: [ (currentCharacter between: $' and: $))
						or: [ currentCharacter == $,
								or: [ (currentCharacter between: $0 and: $9)
										or: [ currentCharacter == $;
												or: [ (currentCharacter between: $A and: $[)
														or: [ currentCharacter == $]
																or: [ (currentCharacter between: $_ and: ${)
																		or: [ currentCharacter == $}
																				or: [ (currentCharacter
																						between: (Character value: 127)
																						and: (Character value: 8249))
																						or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan73X5X1 ].
	^ self reportLastMatch