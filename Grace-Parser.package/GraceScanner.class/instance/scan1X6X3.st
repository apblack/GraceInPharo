generated
scan1X6X3
	self step.
	currentCharacter == $>
		ifTrue:
			[ ^ self scan1X6X1 ].
	(currentCharacter isDashPunctuation
		or: [ currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $. and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $=)
														or: [ (currentCharacter between: $? and: $@)
																or: [ ('\^|~' includes: currentCharacter)
																		or: [ (currentCharacter
																				between: (Character value: 8804)
																				and: (Character value: 8805))
																				or: [ currentCharacter =
																						(Character value: 8901) ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan1X6X2 ].
	^ self reportLastMatch