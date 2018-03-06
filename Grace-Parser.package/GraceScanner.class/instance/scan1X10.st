generated
scan1X10
	self recordMatch: #(57 58).
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $@)
												or: [ ('\^|~÷' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 8800)
																or: [ (currentCharacter
																		between: (Character value: 8804)
																		and: (Character value: 8805))
																		or: [ currentCharacter =
																				(Character value: 8901) ] ] ] ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(57).
			self step.
			currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or: [ ('\^|~÷' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 8800)
																		or: [ (currentCharacter
																				between: (Character value: 8804)
																				and: (Character value: 8805))
																				or: [ currentCharacter =
																						(Character value: 8901) ] ] ] ] ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch