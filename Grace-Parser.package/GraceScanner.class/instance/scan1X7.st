generated
scan1X7
	self recordMatch: #(59).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
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
		ifTrue: [ [ self recordMatch: #(59).
			self step.
			currentCharacter isDashPunctuation
				or: [ currentCharacter == $!
						or: [ (currentCharacter between: $# and: $&)
								or: [ (currentCharacter between: $* and: $+)
										or: [ (currentCharacter between: $. and: $/)
												or: [ currentCharacter == $:
														or: [ (currentCharacter between: $< and: $@)
																or: [ ('\^|~' includes: currentCharacter)
																		or: [ (currentCharacter
																				between: (Character value: 8804)
																				and: (Character value: 8805))
																				or: [ currentCharacter =
																						(Character value: 8901) ] ] ] ] ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch