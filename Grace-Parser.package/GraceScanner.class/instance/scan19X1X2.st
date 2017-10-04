generated
scan19X1X2
	(currentCharacter <= Character space
		or: [ (currentCharacter between: $' and: $))
				or: [ currentCharacter == $,
						or: [ (currentCharacter between: $0 and: $9)
								or: [ currentCharacter == $;
										or: [ (currentCharacter between: $A and: $[)
												or: [ (currentCharacter between: $_ and: $z)
														or: [ currentCharacter == $}
																or: [ currentCharacter >= (Character value: 127) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	(currentCharacter isSpecial
		or: [ currentCharacter isSafeForHTTP
				or: [ currentCharacter isCompletionCharacter
						or: [ (currentCharacter between: $# and: $$)
								or: [ currentCharacter == $^ ] ] ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch