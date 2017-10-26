generated
scan95
	self recordMatch: #(43 59).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan96 ].
	(currentCharacter isDashPunctuation
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ ('.:' includes: currentCharacter)
										or: [ (currentCharacter between: $< and: $@)
												or: [ ('\^|~' includes: currentCharacter)
														or: [ (currentCharacter
																between: (Character value: 8804)
																and: (Character value: 8805))
																or: [ currentCharacter =
																		(Character value: 8901) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan94 ].
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
																						or: [ (currentCharacter
																								between: (Character value: 8251)
																								and: (Character value: 8803))
																								or: [ (currentCharacter
																										between: (Character value: 8806)
																										and: (Character value: 8900))
																										or: [ currentCharacter >= (Character value: 8902) ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan95X1 ].
	^ self reportLastMatch