generated
scan1X6
	self recordMatch: #(59).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan1X6X2 ].
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
		ifTrue:
			[ self scan1X6X1 ].
	^ self reportLastMatch