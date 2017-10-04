generated
scan4
	[ self recordMatch: #(50 55).
	self step.
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or:
													[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ]
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
																										and: (Character value: 8231))
																										or: [ currentCharacter >= (Character value: 8233) ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan4X1 ].
	^ self reportLastMatch