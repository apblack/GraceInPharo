generated
scan2X1
	[ self recordMatch: #(43 59).
	self step.
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or: [ ('\^|~¬÷' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 8800)
																or: [ (currentCharacter
																		between: (Character value: 8804)
																		and: (Character value: 8805))
																		or: [ currentCharacter =
																				(Character value: 8901) ] ] ] ] ] ] ] ] ] ]
		whileTrue.
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character space)
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
																										and: (Character value: 171))
																										or: [ (currentCharacter
																												between: (Character value: 173)
																												and: (Character value: 246))
																												or: [ (currentCharacter
																														between: (Character value: 248)
																														and: (Character value: 8231))
																														or: [ (currentCharacter
																																between: (Character value: 8233)
																																and: (Character value: 8799))
																																or: [ (currentCharacter
																																		between: (Character value: 8801)
																																		and: (Character value: 8803))
																																		or: [ (currentCharacter
																																				between: (Character value: 8806)
																																				and: (Character value: 8900))
																																				or: [ currentCharacter >= (Character value: 8902) ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan2X1X1 ].
	^ self reportLastMatch