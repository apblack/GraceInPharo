generated
scan19X7X1
	(currentCharacter <= Character space
		or: [ (currentCharacter between: $' and: $))
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $0 and: $9)
								or: [ currentCharacter == $;
										or: [ (currentCharacter between: $A and: $[)
												or: [ currentCharacter == $]
														or: [ (currentCharacter between: $_ and: $z)
																or: [ currentCharacter == $}
																		or: [ currentCharacter >= (Character value: 127) ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch